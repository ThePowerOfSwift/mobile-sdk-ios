import XCTest
@testable import CrowdinSDK

class CrowdinSDKConfigTests: XCTestCase {
    // swiftlint:disable implicitly_unwrapped_optional
    var providerConfig: CrowdinProviderConfig!
    
    override func setUp() {
        self.providerConfig = CrowdinProviderConfig(hashString: "test_hash", localizations: ["en", "de", "uk"], sourceLanguage: "en")
    }
    
    func testDefaultConfigInitialization() {
        let config = CrowdinSDKConfig.config()
        XCTAssertNil(config.crowdinProviderConfig)
    }
    
    func testConfigInitialization() {
        let config = CrowdinSDKConfig.config().with(crowdinProviderConfig: providerConfig)
        XCTAssertNotNil(config.crowdinProviderConfig)
    }
    
    func testProviderConfigInitialization() {
        XCTAssert(providerConfig.hashString == "test_hash")
        
        XCTAssert(providerConfig.localizations.count == 3)
        XCTAssert(providerConfig.localizations.contains("en"))
        XCTAssert(providerConfig.localizations.contains("de"))
        XCTAssert(providerConfig.localizations.contains("uk"))
        
        XCTAssert(providerConfig.sourceLanguage == "en")
    }
}
