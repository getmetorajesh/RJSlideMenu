//
//  ExSlideMenuController.swift
//  HappyHours
//
//  Created by Muge Kurtipek on 17/11/15.
//  Copyright © 2015 Muge Kurtipek. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class ExSlideMenuController: SlideMenuController {

    override func isTagetViewController() -> Bool {
        if let vc = UIApplication.topViewController() {
            if vc is HomePageViewController ||
                vc is OtherViewController 
            {
                    return true
            }
        }
        return false
    }

}
