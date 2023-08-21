//
//  SettingViewController.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import UIKit

final class SettingViewController: UIViewController {
    private var viewModel: SettingViewModel?
    
    static func create(with viewModel: SettingViewModel) -> SettingViewController {
        let viewController = SettingViewController()
        viewController.viewModel = viewModel
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
