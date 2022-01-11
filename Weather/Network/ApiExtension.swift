import Foundation

extension Api {
  
  static let baseUrl = "https://api.openweathermap.org/data/2.5/"
  
  static func getUrl(lat: Double, lon: Double) -> String {
    
    return "\(baseUrl)onecall?lat=\(lat)&lon=\(lon)&exclude=hourly&appid=\(key)&units=metric"
  }
}
