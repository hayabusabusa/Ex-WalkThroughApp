//
//  FirstViewController.swift
//  WalkthroughApp
//
//  Created by Yamada Shunya on 2019/06/03.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Navigation
        navigationItem.title = "First"
    }
    
    @IBAction func tapNextButton(_ sender: Any) {
        if let nextVC = UIStoryboard(name: "SecondViewController", bundle: nil).instantiateInitialViewController() {
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}
