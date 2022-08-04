// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls {
    public func pullNumber(_ pullNumber: Int) -> WithPullNumber {
        WithPullNumber(path: "\(path)/\(pullNumber)")
    }

    public struct WithPullNumber {
        /// Path: `/repos/{owner}/{repo}/pulls/{pull_number}`
        public let path: String

        /// Get a pull request
        ///
        /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// Lists details of a pull request by providing its number.
        /// 
        /// When you get, [create](https://docs.github.com/rest/reference/pulls/#create-a-pull-request), or [edit](https://docs.github.com/rest/reference/pulls#update-a-pull-request) a pull request, GitHub creates a merge commit to test whether the pull request can be automatically merged into the base branch. This test commit is not added to the base branch or the head branch. You can review the status of the test commit using the `mergeable` key. For more information, see "[Checking mergeability of pull requests](https://docs.github.com/rest/guides/getting-started-with-the-git-database-api#checking-mergeability-of-pull-requests)".
        /// 
        /// The value of the `mergeable` attribute can be `true`, `false`, or `null`. If the value is `null`, then GitHub has started a background job to compute the mergeability. After giving the job time to complete, resubmit the request. When the job finishes, you will see a non-`null` value for the `mergeable` attribute in the response. If `mergeable` is `true`, then `merge_commit_sha` will be the SHA of the _test_ merge commit.
        /// 
        /// The value of the `merge_commit_sha` attribute changes depending on the state of the pull request. Before merging a pull request, the `merge_commit_sha` attribute holds the SHA of the _test_ merge commit. After merging a pull request, the `merge_commit_sha` attribute changes depending on how you merged the pull request:
        /// 
        /// *   If merged as a [merge commit](https://help.github.com/articles/about-merge-methods-on-github/), `merge_commit_sha` represents the SHA of the merge commit.
        /// *   If merged via a [squash](https://help.github.com/articles/about-merge-methods-on-github/#squashing-your-merge-commits), `merge_commit_sha` represents the SHA of the squashed commit on the base branch.
        /// *   If [rebased](https://help.github.com/articles/about-merge-methods-on-github/#rebasing-and-merging-your-commits), `merge_commit_sha` represents the commit that the base branch was updated to.
        /// 
        /// Pass the appropriate [media type](https://docs.github.com/rest/overview/media-types/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#get-a-pull-request)
        public var get: Request<OctoKit.PullRequest> {
            Request(method: "GET", url: path)
        }

        /// Update a pull request
        ///
        /// Draft pull requests are available in public repositories with GitHub Free and GitHub Free for organizations, GitHub Pro, and legacy per-repository billing plans, and in public and private repositories with GitHub Team and GitHub Enterprise Cloud. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// To open or update a pull request in a public repository, you must have write access to the head or the source branch. For organization-owned repositories, you must be a member of the organization that owns the repository to open or update a pull request.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls/#update-a-pull-request)
        public func patch(_ body: PatchRequest? = nil) -> Request<OctoKit.PullRequest> {
            Request(method: "PATCH", url: path, body: body)
        }

        public struct PatchRequest: Encodable {
            /// The title of the pull request.
            public var title: String?
            /// The contents of the pull request.
            public var body: String?
            /// State of this Pull Request. Either `open` or `closed`.
            public var state: State?
            /// The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository.
            public var base: String?
            /// Indicates whether [maintainers can modify](https://help.github.com/articles/allowing-changes-to-a-pull-request-branch-created-from-a-fork/) the pull request.
            public var maintainerCanModify: Bool?

            /// State of this Pull Request. Either `open` or `closed`.
            public enum State: String, Codable, CaseIterable {
                case `open`
                case closed
            }

            public init(title: String? = nil, body: String? = nil, state: State? = nil, base: String? = nil, maintainerCanModify: Bool? = nil) {
                self.title = title
                self.body = body
                self.state = state
                self.base = base
                self.maintainerCanModify = maintainerCanModify
            }

            private enum CodingKeys: String, CodingKey {
                case title
                case body
                case state
                case base
                case maintainerCanModify = "maintainer_can_modify"
            }
        }
    }
}
