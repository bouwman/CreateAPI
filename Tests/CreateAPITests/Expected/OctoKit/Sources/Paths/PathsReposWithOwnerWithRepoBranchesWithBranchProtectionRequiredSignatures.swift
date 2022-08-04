// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Branches.WithBranch.Protection {
    public var requiredSignatures: RequiredSignatures {
        RequiredSignatures(path: path + "/required_signatures")
    }

    public struct RequiredSignatures {
        /// Path: `/repos/{owner}/{repo}/branches/{branch}/protection/required_signatures`
        public let path: String

        /// Get commit signature protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// When authenticated with admin or owner permissions to the repository, you can use this endpoint to check whether a branch requires signed commits. An enabled status of `true` indicates you must sign commits on this branch. For more information, see [Signing commits with GPG](https://help.github.com/articles/signing-commits-with-gpg) in GitHub Help.
        /// 
        /// **Note**: You must enable branch protection to require signed commits.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#get-commit-signature-protection)
        public var get: Request<OctoKit.ProtectedBranchAdminEnforced> {
            Request(method: "GET", url: path)
        }

        /// Create commit signature protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// When authenticated with admin or owner permissions to the repository, you can use this endpoint to require signed commits on a branch. You must enable branch protection to require signed commits.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#create-commit-signature-protection)
        public var post: Request<OctoKit.ProtectedBranchAdminEnforced> {
            Request(method: "POST", url: path)
        }

        /// Delete commit signature protection
        ///
        /// Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
        /// 
        /// When authenticated with admin or owner permissions to the repository, you can use this endpoint to disable required signed commits on a branch. You must enable branch protection to require signed commits.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/repos#delete-commit-signature-protection)
        public var delete: Request<Void> {
            Request(method: "DELETE", url: path)
        }
    }
}
