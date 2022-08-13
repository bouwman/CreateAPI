// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Legacy Review Comment
public struct ReviewComment: Codable {
    /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/comments/1"
    public var url: URL
    /// Example: 42
    public var pullRequestReviewID: Int?
    /// Example: 10
    public var id: Int
    /// Example: "MDI0OlB1bGxSZXF1ZXN0UmV2aWV3Q29tbWVudDEw"
    public var nodeID: String
    /// Example: "@@ -16,33 +16,40 @@ public class Connection : IConnection..."
    public var diffHunk: String
    /// Example: "file1.txt"
    public var path: String
    public var position: Int?
    public var originalPosition: Int
    /// Example: "6dcb09b5b57875f334f61aebed695e2e4193db5e"
    public var commitID: String
    /// Example: "9c48853fa3dc5c1c3d6f1f1cd1f2743e72652840"
    public var originalCommitID: String
    public var inReplyToID: Int?
    /// Simple User
    public var user: SimpleUser?
    /// Example: "Great stuff"
    public var body: String
    /// Example: "2011-04-14T16:00:49Z"
    public var createdAt: Date
    /// Example: "2011-04-14T16:00:49Z"
    public var updatedAt: Date
    /// Example: "https://github.com/octocat/Hello-World/pull/1#discussion-diff-1"
    public var htmlURL: URL
    /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/1"
    public var pullRequestURL: URL
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation
    public var links: Links
    public var bodyText: String?
    public var bodyHTML: String?
    /// Reaction Rollup
    public var reactions: ReactionRollup?
    /// The side of the first line of the range for a multi-line comment.
    public var side: Side?
    /// The side of the first line of the range for a multi-line comment.
    public var startSide: StartSide?
    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    public var line: Int?
    /// The original line of the blob to which the comment applies. The last line of the range for a multi-line comment
    public var originalLine: Int?
    /// The first line of the range for a multi-line comment.
    public var startLine: Int?
    /// The original first line of the range for a multi-line comment.
    public var originalStartLine: Int?

    public struct Links: Codable {
        /// Link
        ///
        /// Hypermedia Link
        public var this: Link
        /// Link
        ///
        /// Hypermedia Link
        public var html: Link
        /// Link
        ///
        /// Hypermedia Link
        public var pullRequest: Link

        public init(this: Link, html: Link, pullRequest: Link) {
            self.this = this
            self.html = html
            self.pullRequest = pullRequest
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.this = try values.decode(Link.self, forKey: "self")
            self.html = try values.decode(Link.self, forKey: "html")
            self.pullRequest = try values.decode(Link.self, forKey: "pull_request")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(this, forKey: "self")
            try values.encode(html, forKey: "html")
            try values.encode(pullRequest, forKey: "pull_request")
        }
    }

    /// The side of the first line of the range for a multi-line comment.
    public enum Side: String, Codable, CaseIterable {
        case left = "LEFT"
        case right = "RIGHT"
    }

    /// The side of the first line of the range for a multi-line comment.
    public enum StartSide: String, Codable, CaseIterable {
        case left = "LEFT"
        case right = "RIGHT"
    }

    public init(url: URL, pullRequestReviewID: Int? = nil, id: Int, nodeID: String, diffHunk: String, path: String, position: Int? = nil, originalPosition: Int, commitID: String, originalCommitID: String, inReplyToID: Int? = nil, user: SimpleUser? = nil, body: String, createdAt: Date, updatedAt: Date, htmlURL: URL, pullRequestURL: URL, authorAssociation: AuthorAssociation, links: Links, bodyText: String? = nil, bodyHTML: String? = nil, reactions: ReactionRollup? = nil, side: Side? = nil, startSide: StartSide? = nil, line: Int? = nil, originalLine: Int? = nil, startLine: Int? = nil, originalStartLine: Int? = nil) {
        self.url = url
        self.pullRequestReviewID = pullRequestReviewID
        self.id = id
        self.nodeID = nodeID
        self.diffHunk = diffHunk
        self.path = path
        self.position = position
        self.originalPosition = originalPosition
        self.commitID = commitID
        self.originalCommitID = originalCommitID
        self.inReplyToID = inReplyToID
        self.user = user
        self.body = body
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.htmlURL = htmlURL
        self.pullRequestURL = pullRequestURL
        self.authorAssociation = authorAssociation
        self.links = links
        self.bodyText = bodyText
        self.bodyHTML = bodyHTML
        self.reactions = reactions
        self.side = side
        self.startSide = startSide
        self.line = line
        self.originalLine = originalLine
        self.startLine = startLine
        self.originalStartLine = originalStartLine
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(URL.self, forKey: "url")
        self.pullRequestReviewID = try values.decodeIfPresent(Int.self, forKey: "pull_request_review_id")
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.diffHunk = try values.decode(String.self, forKey: "diff_hunk")
        self.path = try values.decode(String.self, forKey: "path")
        self.position = try values.decodeIfPresent(Int.self, forKey: "position")
        self.originalPosition = try values.decode(Int.self, forKey: "original_position")
        self.commitID = try values.decode(String.self, forKey: "commit_id")
        self.originalCommitID = try values.decode(String.self, forKey: "original_commit_id")
        self.inReplyToID = try values.decodeIfPresent(Int.self, forKey: "in_reply_to_id")
        self.user = try values.decodeIfPresent(SimpleUser.self, forKey: "user")
        self.body = try values.decode(String.self, forKey: "body")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.pullRequestURL = try values.decode(URL.self, forKey: "pull_request_url")
        self.authorAssociation = try values.decode(AuthorAssociation.self, forKey: "author_association")
        self.links = try values.decode(Links.self, forKey: "_links")
        self.bodyText = try values.decodeIfPresent(String.self, forKey: "body_text")
        self.bodyHTML = try values.decodeIfPresent(String.self, forKey: "body_html")
        self.reactions = try values.decodeIfPresent(ReactionRollup.self, forKey: "reactions")
        self.side = try values.decodeIfPresent(Side.self, forKey: "side")
        self.startSide = try values.decodeIfPresent(StartSide.self, forKey: "start_side")
        self.line = try values.decodeIfPresent(Int.self, forKey: "line")
        self.originalLine = try values.decodeIfPresent(Int.self, forKey: "original_line")
        self.startLine = try values.decodeIfPresent(Int.self, forKey: "start_line")
        self.originalStartLine = try values.decodeIfPresent(Int.self, forKey: "original_start_line")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encodeIfPresent(pullRequestReviewID, forKey: "pull_request_review_id")
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(diffHunk, forKey: "diff_hunk")
        try values.encode(path, forKey: "path")
        try values.encodeIfPresent(position, forKey: "position")
        try values.encode(originalPosition, forKey: "original_position")
        try values.encode(commitID, forKey: "commit_id")
        try values.encode(originalCommitID, forKey: "original_commit_id")
        try values.encodeIfPresent(inReplyToID, forKey: "in_reply_to_id")
        try values.encodeIfPresent(user, forKey: "user")
        try values.encode(body, forKey: "body")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(pullRequestURL, forKey: "pull_request_url")
        try values.encode(authorAssociation, forKey: "author_association")
        try values.encode(links, forKey: "_links")
        try values.encodeIfPresent(bodyText, forKey: "body_text")
        try values.encodeIfPresent(bodyHTML, forKey: "body_html")
        try values.encodeIfPresent(reactions, forKey: "reactions")
        try values.encodeIfPresent(side, forKey: "side")
        try values.encodeIfPresent(startSide, forKey: "start_side")
        try values.encodeIfPresent(line, forKey: "line")
        try values.encodeIfPresent(originalLine, forKey: "original_line")
        try values.encodeIfPresent(startLine, forKey: "start_line")
        try values.encodeIfPresent(originalStartLine, forKey: "original_start_line")
    }
}