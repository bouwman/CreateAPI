// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct ViewTraffic: Codable {
    /// Example: 14850
    public var count: Int
    /// Example: 3782
    public var uniques: Int
    public var views: [Traffic]

    public init(count: Int, uniques: Int, views: [Traffic]) {
        self.count = count
        self.uniques = uniques
        self.views = views
    }
}
