// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.App {
    public var hook: Hook {
        Hook(path: path + "/hook")
    }

    public struct Hook {
        /// Path: `/app/hook`
        public let path: String
    }
}
