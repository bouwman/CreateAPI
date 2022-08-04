// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Pet {
    public func petID(_ petID: Int) -> WithPetID {
        WithPetID(path: "\(path)/\(petID)")
    }

    public struct WithPetID {
        /// Path: `/pet/{petId}`
        public let path: String

        /// Find pet by ID
        ///
        /// Returns a single pet
        public var get: Request<edgecases_disable_enums.Pet> {
            Request(method: "GET", url: path)
        }

        /// Updates a pet in the store with form data
        public func post(_ body: PostRequest? = nil) -> Request<Void> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery)
        }

        public struct PostRequest: Encodable {
            /// Updated name of the pet
            public var name: String?
            /// Updated status of the pet
            public var status: String?

            public init(name: String? = nil, status: String? = nil) {
                self.name = name
                self.status = status
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(name, forKey: "name")
                encoder.encode(status, forKey: "status")
                return encoder.items
            }
        }

        /// Deletes a pet
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
