//
//  UIKit+Storyboard.swift
//  StyleAgain
//
//  Created by Macmini on 12/2/18.
//  Copyright © 2018 Style Again. All rights reserved.
//

import UIKit

func viewController(forStoryboardName: String) -> UIViewController? {
    return UIStoryboard(name: forStoryboardName, bundle: nil).instantiateInitialViewController()
}

extension UIViewController {
    func canPerformSegue(withIdentifier identifier: String) -> Bool {
        //first fetch segue templates set in storyboard.
        guard let identifiers = value(forKey: "storyboardSegueTemplates") as? [NSObject] else {
            //if cannot fetch, return false
            return false
        }
        //check every object in segue templates, if it has a value for key _identifier equals your identifier.
        let canPerform = identifiers.contains { (object) -> Bool in
            if let id = object.value(forKey: "_identifier") as? String {
                if id == identifier{
                    return true
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        return canPerform
    }
}
