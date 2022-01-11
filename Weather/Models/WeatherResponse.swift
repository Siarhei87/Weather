import Foundation

struct WeatherResponse: Codable, Identifiable {
  var id = UUID().uuidString
  var lat: Double
  var lon: Double
  var timezone: String
  var timezone_offset: Int
  var current: Current
  var minutely: [Minutely]
  var daily: [Daily]
}


