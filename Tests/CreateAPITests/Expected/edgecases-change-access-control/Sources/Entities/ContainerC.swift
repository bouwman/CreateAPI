// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import NaiveDate

struct ContainerC: Codable {
    var child: Child

    struct Child: Codable {
        var `enum`: Enum
        var renameMe: String

        enum Enum: String, Codable, CaseIterable {
            case a
            case b
        }

        init(`enum`: Enum, renameMe: String) {
            self.enum = `enum`
            self.renameMe = renameMe
        }

        private enum CodingKeys: String, CodingKey {
            case `enum`
            case renameMe = "rename-me"
        }
    }

    init(child: Child) {
        self.child = child
    }
}
