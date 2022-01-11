import SwiftUI
import CoreLocation

final class CityViewModel: ObservableObject {
  
  @Published var weather = WeatherResponse.empty()
  @Published var city = "Minsk" {
    didSet {
      
    }
  }
  
  private lazy var dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .full
    return formatter
  } ()
  
  private lazy var dayFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEE"
    return formatter
  } ()
  
  private lazy var timeFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "hh a"
    return formatter
  } ()
  
  var date: String {
      return dateFormatter.string(from: Date(timeIntervalSince1970: TimeInterval(weather.current.dt)))
  }
  
  var weatherIcon: String {
    if weather.current.weather.count > 0 {
      return weather.current.weather[0].icon
    }
    return "☀️"
  }
}

