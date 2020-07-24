//
//  CounterDisplayLogic.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

protocol CounterDisplayLogic: class {
    func showCurrentCount(viewModel: Counter.IncreasedCount.ViewModel)
}
