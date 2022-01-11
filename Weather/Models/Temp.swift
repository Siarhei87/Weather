import Foundation

struct Temp: Codable, Identifiable {
  var id = UUID().uuidString
  var day: Double
  var min: Double
  var max: Double
  var night: Double
  var eve: Double
  var morn: Double
}
