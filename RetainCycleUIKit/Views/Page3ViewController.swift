//
//  Page3ViewController.swift
//  RetainCycleUIKit
//
//  Created by Furkan Erzurumlu on 29.10.2022.
//

import UIKit

class Page3ViewController: UIViewController {
    var viewModel: CommonViewModel = CommonViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.notifyViewDidLoad()
    }
    
    deinit {
        print("I'm Page3ViewController, and I'm dead!")
    }
}

// MARK: Interface
extension Page3ViewController: BaseViewController {
    func setNavigationTitle(_ title: String) {
        self.title = title
    }
}
