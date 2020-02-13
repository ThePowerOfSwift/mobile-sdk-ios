//
//  Constants.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 2/25/19.
//

import Foundation

let defaultLocalization = "en"
let baseLocalization = "Base"
public let defaultCrowdinErrorCode = 99999

enum Strings: String {
    case Crowdin
}

enum Keys: String {
    case strings
    case plurals
    case localizations
}

enum Notifications: String {
    case ProviderDidDownloadLocalization
    case ProviderDownloadError
}
