//
//  UIApplication.swift
//  Counter SwiftUI MVC
//
//  Created by Tim Mikelj on 24/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import UIKit

extension UIApplication {
    
    var statusBarView: UIView? {
        
        let tag = 3848245

        let keyWindow = UIApplication.shared.connectedScenes
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows.first

        if let statusBar = keyWindow?.viewWithTag(tag) {
            return statusBar
        } else {
            let height = keyWindow?.windowScene?.statusBarManager?.statusBarFrame ?? .zero
            let statusBarView = UIView(frame: height)
            statusBarView.tag = tag
            statusBarView.layer.zPosition = 999999

            keyWindow?.addSubview(statusBarView)
            return statusBarView
        }
    }
}
