// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise {
    public var actions: Actions {
        Actions(path: path + "/actions")
    }

    public struct Actions {
        /// Path: `/enterprises/{enterprise}/actions`
        public let path: String
    }
}
