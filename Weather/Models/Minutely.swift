import Foundation

struct Minutely: Codable, Identifiable {
  var id = UUID().uuidString
  var dt: Int
  var precipitation: Int
}
