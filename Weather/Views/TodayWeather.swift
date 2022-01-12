import SwiftUI

struct TodayWeather: View {
  
  @ObservedObject var cityVM: CityViewModel
  
  var body: some View {
    
    VStack(spacing: 10) {
      
      Text("Today")
        .font(.largeTitle)
        .bold()
      
        Text(cityVM.city)
        .font(.largeTitle)
        .bold()
        
        Image(cityVM.getIcon(icon: cityVM.weatherIcon))
        
        HStack {
          Text("\(cityVM.temperature)℃")
            .font(.system(size: 30))
          
          Text(cityVM.conditions)
        }
      
      HStack {
        
        Spacer()
        
        widgetView(image: "wind", color: .green, title: "\(cityVM.windSpeed) km/hr")
        
        Spacer()
        
        widgetView(image: "drop.fill", color: .blue, title: "\(cityVM.humidity)")
        
        Spacer()
        
        widgetView(image: "umbrella.fill", color: .red, title: "\(cityVM.rainChances)")
        
        Spacer()
      }
    }
    .padding()
    .foregroundColor(.white)
    .background(
      RoundedRectangle(cornerRadius: 20)
        .fill(LinearGradient(
          gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.blue]),
          startPoint: .top,
          endPoint: .bottom))
        .opacity(0.3)
    )
    .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
  }
  
  private func widgetView(image: String, color: Color, title: String) -> some View {
    
    VStack {
      
      Image(systemName: image)
        .padding()
        .font(.title)
        .foregroundColor(color)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
      
      Text(title)
    }
  }
}

struct TodayWeather_Previews: PreviewProvider {
  static var previews: some View {
    TodayWeather(cityVM: CityViewModel())
  }
}
