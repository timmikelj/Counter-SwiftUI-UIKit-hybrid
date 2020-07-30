//
//  CounterViewControllerWrapper.swift
//  Counter SwiftUI Clean Swift
//
//  Created by Tim Mikelj on 30/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct CounterViewControllerWrapper: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> CounterViewController {
        
        guard let viewController = UIStoryboard(name: "Counter", bundle: nil)
                .instantiateViewController(withIdentifier: "CounterViewController") as? CounterViewController else { return UIViewController() as! CounterViewController }
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: CounterViewController, context: Context) {
        
    }
}
