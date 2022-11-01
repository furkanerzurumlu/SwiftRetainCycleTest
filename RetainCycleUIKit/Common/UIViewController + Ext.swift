//
//  UIViewController + Ext.swift
//  RetainCycleUIKit
//
//  Created by Furkan Erzurumlu on 29.10.2022.
//

import UIKit

extension UIViewController {
    func navigateNextPage(withId id: String) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: id) else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
