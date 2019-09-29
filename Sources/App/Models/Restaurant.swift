import FluentSQLite
import Vapor

final class Restaurant: SQLiteModel {
    /// The unique identifier for this
    var id: Int?
    var lat: Double?
    var long: Double?
    var title: String
    var description: String
    var imageURL: String?
    var menuItems: [MenuItem]
    init(id: Int? = nil, title: String, lat: Double?, long: Double?, description: String, imageURL: String?, menuItems: [MenuItem]) {
        self.id = id
        self.title = title
        self.lat = lat
        self.long = long
        self.description = description
        self.imageURL = imageURL
        self.menuItems = menuItems
    }
}

/// Allows to be used as a dynamic migration.
extension Restaurant: Migration { }

/// Allows ` to be encoded to and decoded from HTTP messages.
extension Restaurant: Content { }

/// Allows to be used as a dynamic parameter in route definitions.
extension Restaurant: Parameter { }
