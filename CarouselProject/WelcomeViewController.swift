//
//  WelcomeViewController.swift
//  CarouselProject
//
//  Created by Kelly Xu on 2/6/15.
//  Copyright (c) 2015 kelly. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var startView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.delegate = self
        startView.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        var page = Int(scrollView.contentOffset.x / 320)
        println("page is \(page)")
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        if (page == 3){
            self.pageControl.alpha = 0
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.startView.alpha = 1
            })
        }else{
            self.pageControl.alpha = 1
            UIView.animateWithDuration(0.3, animations: { () -> Void in
                self.startView.alpha = 0
            })
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
