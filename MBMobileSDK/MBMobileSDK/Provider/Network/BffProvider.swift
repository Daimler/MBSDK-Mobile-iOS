//
// Copyright (c) 2019 MBition GmbH. All rights reserved.
//

import Foundation
import MBCommonKit

final class BffProvider {
    static var providerSessionId: String = UUID().uuidString
    private var sdkVersion: String


    // MARK: - Init

    public init(sdkVersion: String) {

        guard sdkVersion.isEmpty == false else {
            fatalError("no sdk version available")
        }

        self.sdkVersion = sdkVersion
    }
}

extension BffProvider: BffProviding {
	
    public var headerParamProvider: HeaderParamProviding {
        return HeaderParamProvider(sdkVersion: self.sdkVersion)
    }

    /// session id for bff
    public var sessionId: String {
        get {
            return BffProvider.providerSessionId
        }
        set {
            BffProvider.providerSessionId = newValue
        }
    }

    public var urlProvider: UrlProviding {
        return BffUrlProvider()
    }
}

final class BffUrlProvider {

    init() {}
}

extension BffUrlProvider: UrlProviding {

    var baseUrl: String {
        return "https://bff-\(EndpointHelper.urlStageString).risingstars\(EndpointHelper.urlRegionString).daimler.com/v1"
    }
}
