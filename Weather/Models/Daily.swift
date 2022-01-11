import Foundation

struct Daily: Codable, Identifiable {
  var id = UUID().uuidString
  var dt: Int
  var sunrise: Int
  var sunset: Int
  var moonrise: Int
  var moonset: Int
  var moon_phase: Double
  var temp: Temp
  var feels_like: Feels_like
  var pressure: Int
  var humidity: Int
  var dew_point: Double
  var wind_speed: Double
  var wind_deg: Double
  var wind_gust: Double
  var weather: [Weather]
  var clouds: Int
  var pop: Int
  var uvi: Double
}
