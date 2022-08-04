// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var externalGroup: ExternalGroup {
        ExternalGroup(path: path + "/external-group")
    }

    public struct ExternalGroup {
        /// Path: `/orgs/{org}/external-group`
        public let path: String
    }
}
