//
//  CustomButtonUIKit.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import UIKit

class CustomButtonUIKit: UIButton {

    override func didMoveToSuperview() {
        backgroundColor = .systemBlue
        titleLabel?.textColor = .systemBackground
        layer.cornerRadius = bounds.height / 2
    }

}
