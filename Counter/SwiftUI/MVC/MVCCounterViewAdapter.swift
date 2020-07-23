//
//  MVCCounterViewAdapter.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import Foundation

class MVCCounterViewAdapter: ObservableObject {
    
    var model: MVCCounterViewModelling?
    
    init() {
        let model = MVCCounterViewModel()
        model.viewController = self
        self.model = model
    }
    
    @Published var countDisplayString: String = "Start counting 🔄"
}

extension MVCCounterViewAdapter: MVCCounterViewDisplayLogic {
    
    func showCurrentCount(countString: String) {
        countDisplayString = countString
    }
}
