//
//  CounterModels.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

enum Counter {
    
    enum IncreasedCount {
        
        struct Response {
            let count: Int
        }
        
        struct ViewModel {
            let countString: String
        }
    }
}
