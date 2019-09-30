//
//  RestaurantVC.swift
//  Queue
//
//  Created by Jonathan Kopp on 9/29/19.
//  Copyright © 2019 Jonathan Kopp. All rights reserved.
//

import Foundation
import UIKit

class RestaurantVC: UIViewController {
    
    var restaurant:ResaurantElement?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = restaurant!.title
    }
}
