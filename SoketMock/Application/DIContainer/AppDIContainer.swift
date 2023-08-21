//
//  AppDIContainer.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import Foundation

final class AppDIContainer {
    lazy var appConfiguration = AppConfiguration()
    
    func makeMainSceneDIContainer() -> MainSceneDIContainer {
        let dependencies = MainSceneDIContainer.Dependencies()
        return MainSceneDIContainer(dependencies: dependencies)
    }
}
