import Foundation

struct Feels_like: Codable, Identifiable {
  var id = UUID().uuidString
  var day: Double
  var night: Double
  var eve: Double
  var morn: Double
}
