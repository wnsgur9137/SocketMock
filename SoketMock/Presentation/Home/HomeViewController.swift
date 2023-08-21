//
//  HomeViewController.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import UIKit

final class HomeViewController: UIViewController {
    private var viewModel: HomeViewModel?
    
    static func create(with viewModel: HomeViewModel) -> HomeViewController {
        let viewController = HomeViewController()
        viewController.viewModel = viewModel
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
