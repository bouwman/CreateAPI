// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct RemovedFromProjectIssueEvent: Codable {
    public var id: Int
    public var nodeID: String
    public var url: String
    /// Simple User
    public var actor: SimpleUser
    public var event: String
    public var commitID: String?
    public var commitURL: String?
    public var createdAt: String
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: Integration?
    public var projectCard: ProjectCard?

    public struct ProjectCard: Codable {
        public var id: Int
        public var url: URL
        public var projectID: Int
        public var projectURL: URL
        public var columnName: String
        public var previousColumnName: String?

        public init(id: Int, url: URL, projectID: Int, projectURL: URL, columnName: String, previousColumnName: String? = nil) {
            self.id = id
            self.url = url
            self.projectID = projectID
            self.projectURL = projectURL
            self.columnName = columnName
            self.previousColumnName = previousColumnName
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case url
            case projectID = "project_id"
            case projectURL = "project_url"
            case columnName = "column_name"
            case previousColumnName = "previous_column_name"
        }
    }

    public init(id: Int, nodeID: String, url: String, actor: SimpleUser, event: String, commitID: String? = nil, commitURL: String? = nil, createdAt: String, performedViaGithubApp: Integration? = nil, projectCard: ProjectCard? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.url = url
        self.actor = actor
        self.event = event
        self.commitID = commitID
        self.commitURL = commitURL
        self.createdAt = createdAt
        self.performedViaGithubApp = performedViaGithubApp
        self.projectCard = projectCard
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case url
        case actor
        case event
        case commitID = "commit_id"
        case commitURL = "commit_url"
        case createdAt = "created_at"
        case performedViaGithubApp = "performed_via_github_app"
        case projectCard = "project_card"
    }
}
