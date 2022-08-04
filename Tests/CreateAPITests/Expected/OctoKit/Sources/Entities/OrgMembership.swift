// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct OrgMembership: Codable {
    /// Example: "https://api.github.com/orgs/octocat/memberships/defunkt"
    public var url: URL
    /// The state of the member in the organization. The `pending` state indicates the user has not yet accepted an invitation.
    ///
    /// Example: "active"
    public var state: State
    /// The user's membership type in the organization.
    ///
    /// Example: "admin"
    public var role: Role
    /// Example: "https://api.github.com/orgs/octocat"
    public var organizationURL: URL
    /// Organization Simple
    public var organization: OrganizationSimple
    /// Simple User
    public var user: SimpleUser?
    public var permissions: Permissions?

    /// The state of the member in the organization. The `pending` state indicates the user has not yet accepted an invitation.
    ///
    /// Example: "active"
    public enum State: String, Codable, CaseIterable {
        case active
        case pending
    }

    /// The user's membership type in the organization.
    ///
    /// Example: "admin"
    public enum Role: String, Codable, CaseIterable {
        case admin
        case member
        case billingManager = "billing_manager"
    }

    public struct Permissions: Codable {
        public var canCreateRepository: Bool

        public init(canCreateRepository: Bool) {
            self.canCreateRepository = canCreateRepository
        }

        private enum CodingKeys: String, CodingKey {
            case canCreateRepository = "can_create_repository"
        }
    }

    public init(url: URL, state: State, role: Role, organizationURL: URL, organization: OrganizationSimple, user: SimpleUser? = nil, permissions: Permissions? = nil) {
        self.url = url
        self.state = state
        self.role = role
        self.organizationURL = organizationURL
        self.organization = organization
        self.user = user
        self.permissions = permissions
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case state
        case role
        case organizationURL = "organization_url"
        case organization
        case user
        case permissions
    }
}
