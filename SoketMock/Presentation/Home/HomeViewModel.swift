//
//  HomeViewModel.swift
//  SoketMock
//
//  Created by JUNHYEOK LEE on 2023/08/21.
//

import Foundation

struct HomeViewModelActions {
    
}

protocol HomeViewModelInput {
    
}

protocol HomeViewModelOutput {
    
}

protocol HomeViewModel: HomeViewModelInput, HomeViewModelOutput { }

final class DefaultHomeViewModel: HomeViewModel {
    private let actions: HomeViewModelActions?
    
    init(actions: HomeViewModelActions?) {
        self.actions = actions
    }
}
