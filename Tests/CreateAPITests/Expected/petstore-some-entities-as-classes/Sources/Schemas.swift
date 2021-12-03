// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation

/// A pet title
///
/// A pet description
public struct Pet: Decodable {
    public var id: Int
    /// Example: Buddy
    public var name: String
    public var tag: String?

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.tag = try values.decodeIfPresent(String.self, forKey: "tag")
    }
}

public final class Store: Decodable {
    public var pets: [Pet]

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.pets = try values.decode([Pet].self, forKey: "pets")
    }
}

public struct Error: Decodable {
    public var code: Int
    public var message: String

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.code = try values.decode(Int.self, forKey: "code")
        self.message = try values.decode(String.self, forKey: "message")
    }
}

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
    private let string: String
    private var int: Int?

    var stringValue: String { return string }

    init(string: String) {
        self.string = string
    }

    init?(stringValue: String) {
        self.string = stringValue
    }

    var intValue: Int? { return int }

    init?(intValue: Int) {
        self.string = String(describing: intValue)
        self.int = intValue
    }

    init(stringLiteral value: String) {
        self.string = value
    }
}
