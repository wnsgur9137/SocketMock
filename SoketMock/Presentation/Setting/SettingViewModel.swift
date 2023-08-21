//
//  SettingViewModel.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import Foundation

struct SettingViewModelActions {
    
}

protocol SettingViewModelInput {
    
}

protocol SettingViewModelOutput {
    
}

protocol SettingViewModel: SettingViewModelInput, SettingViewModelOutput { }

final class DefaultSettingViewModel: SettingViewModel {
    private let actions: SettingViewModelActions?
    
    init(actions: SettingViewModelActions?) {
        self.actions = actions
    }
}
