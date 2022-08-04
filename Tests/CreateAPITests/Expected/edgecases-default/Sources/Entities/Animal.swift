// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct Animal: Codable {
    public var className: String
    public var color: String?

    public init(className: String, color: String? = nil) {
        self.className = className
        self.color = color
    }
}
