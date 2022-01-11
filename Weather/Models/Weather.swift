import Foundation

class Weather: Codable, Identifiable {
  var id: Int
  var main: String
  var description: String
  var icon: String
}

