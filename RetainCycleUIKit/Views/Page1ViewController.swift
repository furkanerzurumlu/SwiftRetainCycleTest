//
//  Page1ViewController.swift
//  RetainCycleUIKit
//
//  Created by Furkan Erzurumlu on 29.10.2022.
//

import UIKit

class Page1ViewController: UIViewController {
    private var viewModel: CommonViewModel = CommonViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.notifyViewDidLoad()
    }
    
    deinit {
        print("I'm Page1ViewController, and I'm dead!")
    }
}

// MARK: - Interface
extension Page1ViewController: BaseViewController {
    func setNavigationTitle(_ title: String) {
        self.title = title
    }
}

// MARK: - Actions
extension Page1ViewController {
    @IBAction private func nextButtonTapped() {
        navigateNextPage(withId: "Page2VC")
    }
}
