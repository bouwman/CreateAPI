// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Organizations.WithOrganizationID {
    public var customRoles: CustomRoles {
        CustomRoles(path: path + "/custom_roles")
    }

    public struct CustomRoles {
        /// Path: `/organizations/{organization_id}/custom_roles`
        public let path: String

        /// List custom repository roles in an organization
        ///
        /// List the custom repository roles available in this organization. In order to see custom
        /// repository roles in an organization, the authenticated user must be an organization owner.
        /// 
        /// For more information on custom repository roles, see "[Managing custom repository roles for an organization](https://docs.github.com/organizations/managing-peoples-access-to-your-organization-with-roles/managing-custom-repository-roles-for-an-organization)".
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/orgs#list-custom-repository-roles-in-an-organization)
        public var get: Request<GetResponse> {
            Request(method: "GET", url: path)
        }

        public struct GetResponse: Decodable {
            /// The number of custom roles in this organization
            public var totalCount: Int?
            public var customRoles: [OctoKit.OrganizationCustomRepositoryRole]?

            public init(totalCount: Int? = nil, customRoles: [OctoKit.OrganizationCustomRepositoryRole]? = nil) {
                self.totalCount = totalCount
                self.customRoles = customRoles
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case customRoles = "custom_roles"
            }
        }
    }
}
