// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Issues.WithIssueNumber.Labels {
    public func name(_ name: String) -> WithName {
        WithName(path: "\(path)/\(name)")
    }

    public struct WithName {
        /// Path: `/repos/{owner}/{repo}/issues/{issue_number}/labels/{name}`
        public let path: String

        /// Remove a label from an issue
        ///
        /// Removes the specified label from the issue, and returns the remaining labels on the issue. This endpoint returns a `404 Not Found` status if the label does not exist.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#remove-a-label-from-an-issue)
        public var delete: Request<[OctoKit.Label]> {
            Request(method: "DELETE", url: path, id: "issues/remove-label")
        }
    }
}