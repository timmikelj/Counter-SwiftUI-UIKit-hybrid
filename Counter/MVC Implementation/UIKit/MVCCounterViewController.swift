//
//  MVCCounterViewController.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import UIKit

class MVCCounterViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    private var model: MVCCounterViewModelling?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let model = MVCCounterViewModel()
        model.viewController = self
        self.model = model
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .offWhite
        UIApplication.shared.statusBarView?.backgroundColor = .offWhite
    }
    
    @IBAction func decreaseTapped(_ sender: CustomButtonUIKit) {
        model?.decreaseTapped()
    }
    
    @IBAction func increaseTapped(_ sender: CustomButtonUIKit) {
        model?.increaseTapped()
    }
}

extension MVCCounterViewController: MVCCounterViewDisplayLogic {
    
    func showCurrentCount(countString: String) {
        titleLabel.text = countString
    }
}
