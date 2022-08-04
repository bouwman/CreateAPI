// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Applications.WithClientID.Token {
    public var scoped: Scoped {
        Scoped(path: path + "/scoped")
    }

    public struct Scoped {
        /// Path: `/applications/{client_id}/token/scoped`
        public let path: String

        /// Create a scoped access token
        ///
        /// Use a non-scoped user-to-server OAuth access token to create a repository scoped and/or permission scoped user-to-server OAuth access token. You can specify which repositories the token can access and which permissions are granted to the token. You must use [Basic Authentication](https://docs.github.com/rest/overview/other-authentication-methods#basic-authentication) when accessing this endpoint, using the OAuth application's `client_id` and `client_secret` as the username and password. Invalid tokens will return `404 NOT FOUND`.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/apps#create-a-scoped-access-token)
        public func post(_ body: PostRequest) -> Request<OctoKit.Authorization> {
            Request(method: "POST", url: path, body: body)
        }

        public struct PostRequest: Encodable {
            /// The OAuth access token used to authenticate to the GitHub API.
            ///
            /// Example: "e72e16c7e42f292c6912e7710c838347ae178b4a"
            public var accessToken: String
            /// The name of the user or organization to scope the user-to-server access token to. **Required** unless `target_id` is specified.
            ///
            /// Example: "octocat"
            public var target: String?
            /// The ID of the user or organization to scope the user-to-server access token to. **Required** unless `target` is specified.
            public var targetID: Int?
            /// The list of repository names to scope the user-to-server access token to. `repositories` may not be specified if `repository_ids` is specified.
            public var repositories: [String]?
            /// The list of repository IDs to scope the user-to-server access token to. `repository_ids` may not be specified if `repositories` is specified.
            ///
            /// Example: [1]
            public var repositoryIDs: [Int]?
            /// App Permissions
            ///
            /// The permissions granted to the user-to-server access token.
            ///
            /// Example:
            ///
            /// {
            ///   "contents" : "read",
            ///   "deployments" : "write",
            ///   "issues" : "read",
            ///   "single_file" : "read"
            /// }
            public var permissions: OctoKit.AppPermissions?

            public init(accessToken: String, target: String? = nil, targetID: Int? = nil, repositories: [String]? = nil, repositoryIDs: [Int]? = nil, permissions: OctoKit.AppPermissions? = nil) {
                self.accessToken = accessToken
                self.target = target
                self.targetID = targetID
                self.repositories = repositories
                self.repositoryIDs = repositoryIDs
                self.permissions = permissions
            }

            private enum CodingKeys: String, CodingKey {
                case accessToken = "access_token"
                case target
                case targetID = "target_id"
                case repositories
                case repositoryIDs = "repository_ids"
                case permissions
            }
        }
    }
}
