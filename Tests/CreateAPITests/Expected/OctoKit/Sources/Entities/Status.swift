// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// The status of a commit.
public struct Status: Codable {
    public var url: String
    public var avatarURL: String?
    public var id: Int
    public var nodeID: String
    public var state: String
    public var description: String
    public var targetURL: String
    public var context: String
    public var createdAt: String
    public var updatedAt: String
    /// Simple User
    public var creator: SimpleUser?

    public init(url: String, avatarURL: String? = nil, id: Int, nodeID: String, state: String, description: String, targetURL: String, context: String, createdAt: String, updatedAt: String, creator: SimpleUser? = nil) {
        self.url = url
        self.avatarURL = avatarURL
        self.id = id
        self.nodeID = nodeID
        self.state = state
        self.description = description
        self.targetURL = targetURL
        self.context = context
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.creator = creator
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case avatarURL = "avatar_url"
        case id
        case nodeID = "node_id"
        case state
        case description
        case targetURL = "target_url"
        case context
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case creator
    }
}
