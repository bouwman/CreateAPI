// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ArrayTest: Codable {
  public var arrayOfString: [String]?
  public var arrayArrayOfInteger: [[Int]]?
  public var arrayArrayOfModel: [[ReadOnlyFirst]]?

  public init(arrayOfString: [String]? = nil, arrayArrayOfInteger: [[Int]]? = nil, arrayArrayOfModel: [[ReadOnlyFirst]]? = nil) {
    self.arrayOfString = arrayOfString
    self.arrayArrayOfInteger = arrayArrayOfInteger
    self.arrayArrayOfModel = arrayArrayOfModel
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.arrayOfString = try values.decodeIfPresent([String].self, forKey: "array_of_string")
    self.arrayArrayOfInteger = try values.decodeIfPresent([[Int]].self, forKey: "array_array_of_integer")
    self.arrayArrayOfModel = try values.decodeIfPresent([[ReadOnlyFirst]].self, forKey: "array_array_of_model")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(arrayOfString, forKey: "array_of_string")
    try values.encodeIfPresent(arrayArrayOfInteger, forKey: "array_array_of_integer")
    try values.encodeIfPresent(arrayArrayOfModel, forKey: "array_array_of_model")
  }
}