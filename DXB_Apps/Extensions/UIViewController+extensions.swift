//
//  UIViewController+extensions.swift
//  PakID
//
//  Created by Nauman on 24/11/2020.
//

import Foundation
import UIKit
 
typealias CalendarCallback = (String?) -> ()

extension UIViewController {
    func defaultSelectedColor() -> UIColor {
        return UIColor.init(hex: "#1D476E")
    }
    func standardUnselectedColor() -> UIColor {
        return UIColor.init(hex: "#92D0EF")
    }
  
    
}

