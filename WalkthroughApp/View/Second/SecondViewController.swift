//
//  SecondViewController.swift
//  WalkthroughApp
//
//  Created by Yamada Shunya on 2019/06/03.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation
        navigationItem.title = "Second"
    }
    
    @IBAction func tapBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        if let nextVC = UIStoryboard(name: "ThirdViewController", bundle: nil).instantiateInitialViewController() {
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
