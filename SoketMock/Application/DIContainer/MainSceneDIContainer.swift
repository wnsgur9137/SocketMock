//
//  MainSceneDIContainer.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import UIKit

final class MainSceneDIContainer {
    struct Dependencies {
        
    }
    
    private let dependencies: Dependencies
    
    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }
    
    func makeTabBarFlowCoordinator(tabBarController: UITabBarController) -> TabBarFlowCoordinator {
        return TabBarFlowCoordinator(
            tabBarController: tabBarController,
            homeTabDependencies: self,
            settingTabDependencies: self
        )
    }
}

// MARK: - HomeTab Coordinator Dependencies
extension MainSceneDIContainer: HomeTabCoordinatorDependencies {
    func makeHomeViewModel(actions: HomeViewModelActions) -> HomeViewModel {
        return DefaultHomeViewModel(actions: actions)
    }
    
    func makeHomeViewController(actions: HomeViewModelActions) -> HomeViewController {
        return HomeViewController.create(with: makeHomeViewModel(actions: actions))
    }
}

// MARK: - SettingTab Coordinator Dependencies
extension MainSceneDIContainer: SettingTabCoordinatorDependencies {
    func makeSettingViewModel(actions: SettingViewModelActions) -> SettingViewModel {
        return DefaultSettingViewModel(actions: actions)
    }
    
    func makeSettingViewController(actions: SettingViewModelActions) -> SettingViewController {
        return SettingViewController.create(with: makeSettingViewModel(actions: actions))
    }
}
