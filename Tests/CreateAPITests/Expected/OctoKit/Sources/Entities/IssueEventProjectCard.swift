// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

public struct IssueEventProjectCard: Codable {
    public var url: URL
    public var id: Int
    public var projectURL: URL
    public var projectID: Int
    public var columnName: String
    public var previousColumnName: String?

    public init(url: URL, id: Int, projectURL: URL, projectID: Int, columnName: String, previousColumnName: String? = nil) {
        self.url = url
        self.id = id
        self.projectURL = projectURL
        self.projectID = projectID
        self.columnName = columnName
        self.previousColumnName = previousColumnName
    }

    private enum CodingKeys: String, CodingKey {
        case url
        case id
        case projectURL = "project_url"
        case projectID = "project_id"
        case columnName = "column_name"
        case previousColumnName = "previous_column_name"
    }
}
