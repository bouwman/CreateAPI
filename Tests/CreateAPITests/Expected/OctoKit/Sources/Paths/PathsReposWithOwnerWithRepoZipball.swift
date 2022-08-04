// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo {
    public var zipball: Zipball {
        Zipball(path: path + "/zipball")
    }

    public struct Zipball {
        /// Path: `/repos/{owner}/{repo}/zipball`
        public let path: String
    }
}
