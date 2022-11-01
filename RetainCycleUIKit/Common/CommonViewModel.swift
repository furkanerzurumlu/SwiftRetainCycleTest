//
//  CommonViewModel.swift
//  RetainCycleUIKit
//
//  Created by Furkan Erzurumlu on 29.10.2022.
//

protocol BaseViewModel {
    func notifyViewDidLoad() -> Void
}

class CommonViewModel: BaseViewModel {
    var view: BaseViewController?
    
    func notifyViewDidLoad() {
        view?.setNavigationTitle("View Controller")
    }
    
    deinit {
        print("Hi, Am i dead? Yes :(")
    }
}
