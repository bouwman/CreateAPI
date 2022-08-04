// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg.Actions.Permissions.Repositories {
    public func repositoryID(_ repositoryID: Int) -> WithRepositoryID {
        WithRepositoryID(path: "\(path)/\(repositoryID)")
    }

    public struct WithRepositoryID {
        /// Path: `/orgs/{org}/actions/permissions/repositories/{repository_id}`
        public let path: String

        /// Enable a selected repository for GitHub Actions in an organization
        ///
        /// Adds a repository to the list of selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for `enabled_repositories` must be must be configured to `selected`. For more information, see "[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization)."
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `administration` organization permission to use this API.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#enable-a-selected-repository-for-github-actions-in-an-organization)
        public var put: Request<Void> {
            Request(method: "PUT", url: path)
        }

        /// Disable a selected repository for GitHub Actions in an organization
        ///
        /// Removes a repository from the list of selected repositories that are enabled for GitHub Actions in an organization. To use this endpoint, the organization permission policy for `enabled_repositories` must be configured to `selected`. For more information, see "[Set GitHub Actions permissions for an organization](#set-github-actions-permissions-for-an-organization)."
        /// 
        /// You must authenticate using an access token with the `admin:org` scope to use this endpoint. GitHub Apps must have the `administration` organization permission to use this API.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#disable-a-selected-repository-for-github-actions-in-an-organization)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
