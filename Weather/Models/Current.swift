import Foundation

struct Current: Codable, Identifiable {
  var id = UUID().uuidString
  var dt: Int
  var sunrise: Int
  var sunset: Int
  var temp: Double
  var feels_like: Double
  var pressure: Int
  var humidity: Int
  var dew_point: Double
  var uvi: Int
  var clouds: Int
  var visibility: Int
  var wind_speed: Double
  var wind_deg: Int
  var wind_gust: Double
  var weather: [Weather]
}
