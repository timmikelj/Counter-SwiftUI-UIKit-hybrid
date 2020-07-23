//
//  CounterViewAdapter.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import Foundation

class CounterViewAdapter: ObservableObject {
    
    @Published var currentCountDisplayString: String = "Tap to start counting"
    
    var interactor: CounterInteractor?
    
    init() {
        let viewController = self
        let interactor = CounterInteractor()
        let presenter = CounterPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}

extension CounterViewAdapter: CounterDisplayLogic {
    
    func showCurrentCount(viewModel: Counter.IncreasedCount.ViewModel) {
        currentCountDisplayString = viewModel.countString
    }
}
