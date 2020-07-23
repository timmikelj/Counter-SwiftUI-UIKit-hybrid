//
//  CounterPresenter.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

protocol CounterPresentable {
    func presentCurrentCount(response: Counter.IncreasedCount.Response)
}

class CounterPresenter: CounterPresentable {
    
    weak var viewController: CounterDisplayLogic?
    
    func presentCurrentCount(response: Counter.IncreasedCount.Response) {
        let countString = "Current count is \(response.count)"
        viewController?.showCurrentCount(viewModel: Counter.IncreasedCount.ViewModel(countString: countString))
    }
}
