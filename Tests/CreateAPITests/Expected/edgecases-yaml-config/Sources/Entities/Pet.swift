// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct Pet: Codable {
    public var identifier: Int?
    public var category: Category?
    /// Example: "doggie"
    public var name: String
    public var photoURLs: [String]
    public var tags: [Tag]?
    /// Pet status in the store
    public var state: Status?

    /// Pet status in the store
    public enum Status: String, Codable, CaseIterable {
        case available
        case pending
        case sold
    }

    public init(identifier: Int? = nil, category: Category? = nil, name: String, photoURLs: [String], tags: [Tag]? = nil, state: Status? = nil) {
        self.identifier = identifier
        self.category = category
        self.name = name
        self.photoURLs = photoURLs
        self.tags = tags
        self.state = state
    }

    private enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case category
        case name
        case photoURLs = "photoUrls"
        case tags
        case state = "status"
    }
}
