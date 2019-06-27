//
//  UIManager.swift
//  StyleAgain
//
//  Created by Macmini on 12/3/18.
//  Copyright © 2018 Style Again. All rights reserved.
//

import UIKit
import Hero

class UIManager {
    static let shared: UIManager = UIManager()
    
    func showWalkThrough(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) {
        guard let controller = controller else {
            return
        }
        
        if let walkThrough = viewController(forStoryboardName: "Walkthrough") {
            walkThrough.hero.modalAnimationType = .auto
            controller.hero.replaceViewController(with: walkThrough)
        }
    }
}
