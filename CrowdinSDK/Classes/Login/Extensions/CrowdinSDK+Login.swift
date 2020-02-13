//
//  CrowdinSDK+Login.swift
//  CrowdinSDK
//
//  Created by Serhii Londar on 8/16/19.
//

import Foundation

extension CrowdinSDK {
	class func setupLogin() {
		// TODO: Add error log if feature isn't configured.
		guard let config = CrowdinSDK.config else { return }
		guard let loginConfig = config.loginConfig else { return }
        guard let hash = config.crowdinProviderConfig?.hashString else { return }
        CrowdinLogin.configureWith(with: hash, loginConfig: loginConfig)
	}
    
    public class func handle(url: URL) -> Bool {
        return CrowdinLogin.shared?.hadle(url: url) ?? false
    }
}
