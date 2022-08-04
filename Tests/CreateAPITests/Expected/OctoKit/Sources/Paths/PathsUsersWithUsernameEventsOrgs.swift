// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Events {
    public var orgs: Orgs {
        Orgs(path: path + "/orgs")
    }

    public struct Orgs {
        /// Path: `/users/{username}/events/orgs`
        public let path: String
    }
}
