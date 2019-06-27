//
//  Log.swift
//  StyleAgain
//
//  Created by Macmini on 12/2/18.
//  Copyright © 2018 Style Again. All rights reserved.
//

import Foundation

func DLog(message: String, function: String = #function) {
    #if DEBUG
    print("\(function): \(message)")
    #endif
}
