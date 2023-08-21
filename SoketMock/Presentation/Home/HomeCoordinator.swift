//
//  HomeCoordinator.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import UIKit

protocol HomeCoordinatorDependencies {
    func makeHomeViewController(actions: HomeViewModelActions) -> HomeViewController
}

protocol HomeCoordinatorProtocol: Coordinator {
    func showHomeViewController()
}

final class HomeCoordinator: HomeCoordinatorProtocol {
    weak var finishDelegate: CoordinatorFinishDelegate?
    weak var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []
    var type: CoordinatorType { .home }
    
    private let dependencies: HomeCoordinatorDependencies
    private weak var homeViewController: HomeViewController?
    
    init(navigationController: UINavigationController,
         dependencies: HomeCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        showHomeViewController()
    }
    
    func showHomeViewController() {
        let actions = HomeViewModelActions()
        let viewController = dependencies.makeHomeViewController(actions: actions)
        
        navigationController?.pushViewController(viewController, animated: false)
        homeViewController = viewController
    }
}
