//
//  MVCCounterViewControllerWrapper.swift
//  Counter SwiftUI MVC
//
//  Created by Tim Mikelj on 24/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import SwiftUI

struct MVCCounterViewControllerWrapper: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> MVCCounterViewController {
        
        guard let viewController = UIStoryboard(name: "MVCCounter", bundle: nil)
                .instantiateViewController(withIdentifier: "MVCCounterViewController") as? MVCCounterViewController else { return UIViewController() as! MVCCounterViewController }
        
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: MVCCounterViewController, context: Context) {
        
    }
}
