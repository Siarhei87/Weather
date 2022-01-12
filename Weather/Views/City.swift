import SwiftUI

struct City: View {
  
  @ObservedObject var cityVM: CityViewModel
  
  var body: some View {
    
    VStack {
      
      CityView(city: cityVM.city, date: cityVM.date)
        .shadow(radius: 0)
      
      TodayWeather(cityVM: cityVM)
        .padding()
      
      HourlyWeather(cityVM: cityVM)
        .padding(.horizontal)
      
      DailyWeather(cityVM: cityVM)
        .padding(.horizontal)
    }
    .padding(.bottom, 30)
  }
}

struct City_Previews: PreviewProvider {
  static var previews: some View {
    City(cityVM: CityViewModel())
  }
}
