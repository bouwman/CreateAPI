// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths {
	public static var pet: Pet {
		Pet(path: "/pet")
	}

	public struct Pet {
		/// Path: `/pet`
		public let path: String

		/// Add a new pet to the store
		public func post(_ body: edgecases_tabs.Pet) -> Request<Void> {
			Request(method: "POST", url: path, body: body)
		}

		/// Update an existing pet
		public func put(_ body: edgecases_tabs.Pet) -> Request<Void> {
			Request(method: "PUT", url: path, body: body)
		}
	}
}
