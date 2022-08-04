// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

/// Pull Request Reviews are reviews on pull requests.
public struct PullRequestReview: Codable {
    /// Unique identifier of the review
    ///
    /// Example: 42
    public var id: Int
    /// Example: "MDE3OlB1bGxSZXF1ZXN0UmV2aWV3ODA="
    public var nodeID: String
    /// Simple User
    public var user: SimpleUser?
    /// The text of the review.
    ///
    /// Example: "This looks great."
    public var body: String
    /// Example: "CHANGES_REQUESTED"
    public var state: String
    /// Example: "https://github.com/octocat/Hello-World/pull/12#pullrequestreview-80"
    public var htmlURL: URL
    /// Example: "https://api.github.com/repos/octocat/Hello-World/pulls/12"
    public var pullRequestURL: URL
    public var links: Links
    public var submittedAt: Date?
    /// A commit SHA for the review.
    ///
    /// Example: "54bb654c9e6025347f57900a4a5c2313a96b8035"
    public var commitID: String
    public var bodyHTML: String?
    public var bodyText: String?
    /// Author_association
    ///
    /// How the author is associated with the repository.
    ///
    /// Example: "OWNER"
    public var authorAssociation: AuthorAssociation

    public struct Links: Codable {
        public var html: HTML
        public var pullRequest: PullRequest

        public struct HTML: Codable {
            public var href: String

            public init(href: String) {
                self.href = href
            }
        }

        public struct PullRequest: Codable {
            public var href: String

            public init(href: String) {
                self.href = href
            }
        }

        public init(html: HTML, pullRequest: PullRequest) {
            self.html = html
            self.pullRequest = pullRequest
        }

        private enum CodingKeys: String, CodingKey {
            case html
            case pullRequest = "pull_request"
        }
    }

    public init(id: Int, nodeID: String, user: SimpleUser? = nil, body: String, state: String, htmlURL: URL, pullRequestURL: URL, links: Links, submittedAt: Date? = nil, commitID: String, bodyHTML: String? = nil, bodyText: String? = nil, authorAssociation: AuthorAssociation) {
        self.id = id
        self.nodeID = nodeID
        self.user = user
        self.body = body
        self.state = state
        self.htmlURL = htmlURL
        self.pullRequestURL = pullRequestURL
        self.links = links
        self.submittedAt = submittedAt
        self.commitID = commitID
        self.bodyHTML = bodyHTML
        self.bodyText = bodyText
        self.authorAssociation = authorAssociation
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case user
        case body
        case state
        case htmlURL = "html_url"
        case pullRequestURL = "pull_request_url"
        case links = "_links"
        case submittedAt = "submitted_at"
        case commitID = "commit_id"
        case bodyHTML = "body_html"
        case bodyText = "body_text"
        case authorAssociation = "author_association"
    }
}
