// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Notifications.Threads {
    public func threadID(_ threadID: Int) -> WithThreadID {
        WithThreadID(path: "\(path)/\(threadID)")
    }

    public struct WithThreadID {
        /// Path: `/notifications/threads/{thread_id}`
        public let path: String

        /// Get a thread
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#get-a-thread)
        public var get: Request<OctoKit.Thread> {
            Request(method: "GET", url: path, id: "activity/get-thread")
        }

        /// Mark a thread as read
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#mark-a-thread-as-read)
        public var patch: Request<Void> {
            Request(method: "PATCH", url: path, id: "activity/mark-thread-as-read")
        }
    }
}