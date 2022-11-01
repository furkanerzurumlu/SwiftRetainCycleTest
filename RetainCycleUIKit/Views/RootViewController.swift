//
//  RootViewController.swift
//  RetainCycleUIKit
//
//  Created by Furkan Erzurumlu on 29.10.2022.
//

import UIKit

class RootViewController: UIViewController {
    private var viewModel: CommonViewModel = CommonViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.notifyViewDidLoad()
    }
    
    deinit {
        print("I'm RootViewController, and I'm dead!")
    }
}

// MARK: Interface 
extension RootViewController: BaseViewController {
    func setNavigationTitle(_ title: String) {
        self.title = title
    }
}

// MARK: - Actions
extension RootViewController {
    @IBAction private func nextButtonTapped() {
        navigateNextPage(withId: "Page1VC")
    }
}
