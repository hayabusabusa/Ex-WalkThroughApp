//
//  ThirdViewController.swift
//  WalkthroughApp
//
//  Created by Yamada Shunya on 2019/06/03.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation
        navigationItem.title = "Third"
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
