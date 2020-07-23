//
//  MVCCounterViewModel.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

protocol MVCCounterViewModelling {
    func increaseTapped()
    func decreaseTapped()
}

class MVCCounterViewModel: MVCCounterViewModelling {
    
    private var count = 0
    private var countDisplayString: String {
        "Current count is \(count)"
    }
    weak var viewController: MVCCounterViewDisplayLogic?
    
    func increaseTapped() {
        count += 1
        viewController?.showCurrentCount(countString: countDisplayString)
    }
    
    func decreaseTapped() {
        count -= 1
        viewController?.showCurrentCount(countString: countDisplayString)
    }
}
