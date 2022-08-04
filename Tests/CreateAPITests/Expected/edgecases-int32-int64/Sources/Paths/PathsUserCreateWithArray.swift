// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User {
    public var createWithArray: CreateWithArray {
        CreateWithArray(path: path + "/createWithArray")
    }

    public struct CreateWithArray {
        /// Path: `/user/createWithArray`
        public let path: String

        /// Creates list of users with given input array
        public func post(_ body: [edgecases_int32_int64.User]) -> Request<Void> {
            Request(method: "POST", url: path, body: body)
        }
    }
}
