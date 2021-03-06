import SwiftUI

struct CityView: View {
  
  var city: String
  var date: String
  
  var body: some View {
    
    HStack {
      
      VStack(alignment: .center, spacing: 10) {
        
        Text(city)
          .font(.title)
          .bold()
        
        Text(date)
        
      }
      .foregroundColor(.white)
    }
  }
}

struct CityView_Previews: PreviewProvider {
  static var previews: some View {
    CityView(city: "Minsk", date: "")
  }
}
