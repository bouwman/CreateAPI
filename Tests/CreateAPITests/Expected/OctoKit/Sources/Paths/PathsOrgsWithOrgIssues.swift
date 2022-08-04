// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Orgs.WithOrg {
    public var issues: Issues {
        Issues(path: path + "/issues")
    }

    public struct Issues {
        /// Path: `/orgs/{org}/issues`
        public let path: String

        /// List organization issues assigned to the authenticated user
        ///
        /// List issues in an organization assigned to the authenticated user.
        /// 
        /// **Note**: GitHub's REST API v3 considers every pull request an issue, but not every issue is a pull request. For this
        /// reason, "Issues" endpoints may return both issues and pull requests in the response. You can identify pull requests by
        /// the `pull_request` key. Be aware that the `id` of a pull request returned from "Issues" endpoints will be an _issue id_. To find out the pull
        /// request id, use the "[List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests)" endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/issues#list-organization-issues-assigned-to-the-authenticated-user)
        public func get(parameters: GetParameters? = nil) -> Request<[OctoKit.Issue]> {
            Request(method: "GET", url: path, query: parameters?.asQuery)
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var filter: Filter?
            public var state: State?
            public var labels: String?
            public var sort: Sort?
            public var direction: Direction?
            public var since: Date?
            public var perPage: Int?
            public var page: Int?

            public enum Filter: String, Codable, CaseIterable {
                case assigned
                case created
                case mentioned
                case subscribed
                case repos
                case all
            }

            public enum State: String, Codable, CaseIterable {
                case `open`
                case closed
                case all
            }

            public enum Sort: String, Codable, CaseIterable {
                case created
                case updated
                case comments
            }

            public enum Direction: String, Codable, CaseIterable {
                case asc
                case desc
            }

            public init(filter: Filter? = nil, state: State? = nil, labels: String? = nil, sort: Sort? = nil, direction: Direction? = nil, since: Date? = nil, perPage: Int? = nil, page: Int? = nil) {
                self.filter = filter
                self.state = state
                self.labels = labels
                self.sort = sort
                self.direction = direction
                self.since = since
                self.perPage = perPage
                self.page = page
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(filter, forKey: "filter")
                encoder.encode(state, forKey: "state")
                encoder.encode(labels, forKey: "labels")
                encoder.encode(sort, forKey: "sort")
                encoder.encode(direction, forKey: "direction")
                encoder.encode(since, forKey: "since")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                return encoder.items
            }
        }
    }
}
