// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var installations: Installations {
        Installations(path: path + "/installations")
    }

    public struct Installations {
        /// Path: `/user/installations`
        public let path: String

        /// List app installations accessible to the user access token
        ///
        /// Lists installations of your GitHub App that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.
        /// 
        /// You must use a [user-to-server OAuth access token](https://docs.github.com/apps/building-github-apps/identifying-and-authorizing-users-for-github-apps/#identifying-users-on-your-site), created for a user who has authorized your GitHub App, to access this endpoint.
        /// 
        /// The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.
        /// 
        /// You can find the permissions for the installation under the `permissions` key.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#list-app-installations-accessible-to-the-user-access-token)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page))
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var installations: [OctoKit.Installation]

            public init(totalCount: Int, installations: [OctoKit.Installation]) {
                self.totalCount = totalCount
                self.installations = installations
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case installations
            }
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}
