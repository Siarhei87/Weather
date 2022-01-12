import SwiftUI

struct MenuHeader: View {
  
  @ObservedObject var cityVM: CityViewModel
  @State private var search = ""
  
  var body: some View {
    
    HStack {
      
      TextField("", text: $search)
        .padding(.horizontal, 20)
        .padding(.vertical, 5)
      
      Button {
        cityVM.city = search
      } label: {
        ZStack {
          RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue)
          
          Image(systemName: "location.fill")
        }
      }
      .frame(width: 50, height: 50)
      .cornerRadius(20)
    }
    .foregroundColor(.white)
    .padding()
    .background(
      ZStack(alignment: .leading) {
      Image(systemName: "magnifyingglass")
        .foregroundColor(.white)
        .padding(.leading, 10)
      
      RoundedRectangle(cornerRadius: 10)
        .fill(Color.blue.opacity(0.5))
    })
  }
}


struct MenuHeader_Previews: PreviewProvider {
  static var previews: some View {
    MenuHeader(cityVM: CityViewModel())
  }
}
