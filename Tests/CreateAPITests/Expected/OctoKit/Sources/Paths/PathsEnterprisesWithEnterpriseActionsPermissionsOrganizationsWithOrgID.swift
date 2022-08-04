// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Actions.Permissions.Organizations {
    public func orgID(_ orgID: Int) -> WithOrgID {
        WithOrgID(path: "\(path)/\(orgID)")
    }

    public struct WithOrgID {
        /// Path: `/enterprises/{enterprise}/actions/permissions/organizations/{org_id}`
        public let path: String

        /// Enable a selected organization for GitHub Actions in an enterprise
        ///
        /// Adds an organization to the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see "[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise)."
        /// 
        /// You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#enable-a-selected-organization-for-github-actions-in-an-enterprise)
        public var put: Request<Void> {
            Request(method: "PUT", url: path)
        }

        /// Disable a selected organization for GitHub Actions in an enterprise
        ///
        /// Removes an organization from the list of selected organizations that are enabled for GitHub Actions in an enterprise. To use this endpoint, the enterprise permission policy for `enabled_organizations` must be configured to `selected`. For more information, see "[Set GitHub Actions permissions for an enterprise](#set-github-actions-permissions-for-an-enterprise)."
        /// 
        /// You must authenticate using an access token with the `admin:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#disable-a-selected-organization-for-github-actions-in-an-enterprise)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
