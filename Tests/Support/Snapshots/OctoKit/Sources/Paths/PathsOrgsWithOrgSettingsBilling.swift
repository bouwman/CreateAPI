// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Settings {
    public var billing: Billing {
        Billing(path: path + "/billing")
    }

    public struct Billing {
        /// Path: `/orgs/{org}/settings/billing`
        public let path: String
    }
}