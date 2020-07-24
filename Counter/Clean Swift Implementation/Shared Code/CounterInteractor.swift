//
//  CounterInteractor.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

protocol CounterInteractable {
    func increaseTapped()
    func decreaseTapped()
}

class CounterInteractor: CounterInteractable {
    var presenter: CounterPresentable?
    
    private var count: Int = 0

    func increaseTapped() {
        count += 1
        presenter?.presentCurrentCount(response: Counter.IncreasedCount.Response(count: count))
    }
    
    func decreaseTapped() {
        count -= 1
        presenter?.presentCurrentCount(response: Counter.IncreasedCount.Response(count: count))
    }
}
