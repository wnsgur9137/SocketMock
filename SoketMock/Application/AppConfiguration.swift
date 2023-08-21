//
//  AppConfiguration.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import Foundation

final class AppConfiguration {
    private let appConfigurations: [String: String] = {
        guard let appConfigurations = Bundle.main.infoDictionary?["AppConfiguration"] as? [String: String] else {
            fatalError("AppConfigurations must not be empty in plist")
        }
        return appConfigurations
    }()
}
