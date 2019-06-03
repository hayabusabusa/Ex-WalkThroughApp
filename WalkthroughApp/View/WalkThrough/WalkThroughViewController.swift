//
//  WalkThroughViewController.swift
//  WalkthroughApp
//
//  Created by Yamada Shunya on 2019/06/03.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import UIKit

class WalkThroughViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ScrollView
        scrollView.delegate = self
    }
}

extension WalkThroughViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.size.width)
    }
}
