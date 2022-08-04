// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Settings.Billing {
    public var packages: Packages {
        Packages(path: path + "/packages")
    }

    public struct Packages {
        /// Path: `/enterprises/{enterprise}/settings/billing/packages`
        public let path: String

        /// Get GitHub Packages billing for an enterprise
        ///
        /// Gets the free and paid storage used for GitHub Packages in gigabytes.
        /// 
        /// Paid minutes only apply to packages stored for private repositories. For more information, see "[Managing billing for GitHub Packages](https://help.github.com/github/setting-up-and-managing-billing-and-payments-on-github/managing-billing-for-github-packages)."
        /// 
        /// The authenticated user must be an enterprise admin.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/billing#get-github-packages-billing-for-an-enterprise)
        public var get: Request<OctoKit.PackagesBillingUsage> {
            Request(method: "GET", url: path)
        }
    }
}
