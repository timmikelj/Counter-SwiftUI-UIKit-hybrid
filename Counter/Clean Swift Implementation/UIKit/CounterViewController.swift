//
//  CounterViewController.swift
//  Counter SwiftUI
//
//  Created by Tim Mikelj on 23/07/2020.
//  Copyright © 2020 Tim Mikelj. All rights reserved.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    
    private var interactor: CounterInteractable?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let viewController = self
        let interactor = CounterInteractor()
        let presenter = CounterPresenter()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .offWhite
        UIApplication.shared.statusBarView?.backgroundColor = .offWhite
    }
    
    @IBAction func decreaseTapped(_ sender: CustomButtonUIKit) {
        interactor?.decreaseTapped()
    }
    
    @IBAction func increaseTapped(_ sender: CustomButtonUIKit) {
        interactor?.increaseTapped()
    }
}

extension CounterViewController: CounterDisplayLogic {
    
    func showCurrentCount(viewModel: Counter.IncreasedCount.ViewModel) {
        titleLabel.text = viewModel.countString
    }
}
