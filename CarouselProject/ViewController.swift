//
//  ViewController.swift
//  CarouselProject
//
//  Created by Kelly Xu on 2/4/15.
//  Copyright (c) 2015 kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var picView1: UIImageView!
    @IBOutlet weak var picView2: UIImageView!
    @IBOutlet weak var picView3: UIImageView!
    @IBOutlet weak var picView4: UIImageView!
    @IBOutlet weak var picView5: UIImageView!
    @IBOutlet weak var picView6: UIImageView!
    
    var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotation : [Float] = [-10, -10, 10, 10, 10, -10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
   
        scrollView.contentSize = CGSize(width: 320, height: 1176)
        scrollView.delegate = self
        scrollViewDidScroll(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        var offset = Float(scrollView.contentOffset.y)
        println("scrollView offset is \(offset)")
        
        var tx4 = convertValue(offset, 0, 568, -70, 0)
        var ty4 = convertValue(offset, 0, 568, -360, 0)
        var scale4 = convertValue(offset, 0, 568, 0.8, 1)
        var rotation4 = convertValue(offset, 0, 568, -10, 0)
        println("tx:\(tx4), ty: \(ty4), scale: \(scale4), rotation: \(rotation4)")
        picView4.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        picView4.transform = CGAffineTransformScale(picView4.transform, CGFloat(scale4), CGFloat(scale4))
        picView4.transform = CGAffineTransformRotate(picView4.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        var tx1 = convertValue(offset, 0, 568, 50, 0)
        var ty1 = convertValue(offset, 0, 568, -320, 0)
        var scale1 = convertValue(offset, 0, 568, 1.6, 1)
        var rotation1 = convertValue(offset, 0, 568, -10, 0)
        picView1.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        picView1.transform = CGAffineTransformScale(picView1.transform, CGFloat(scale1), CGFloat(scale1))
        picView1.transform = CGAffineTransformRotate(picView1.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        var tx2 = convertValue(offset, 0, 568, -66, 0)
        var ty2 = convertValue(offset, 0, 568, -400, 0)
        var scale2 = convertValue(offset, 0, 568, 1.8, 1)
        var rotation2 = convertValue(offset, 0, 568, 10, 0)
        picView2.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        picView2.transform = CGAffineTransformScale(picView2.transform, CGFloat(scale2), CGFloat(scale2))
        picView2.transform = CGAffineTransformRotate(picView2.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx5 = convertValue(offset, 0, 568, -50, 0)
        var ty5 = convertValue(offset, 0, 568, -380, 0)
        var scale5 = convertValue(offset, 0, 568, 2, 1)
        var rotation5 = convertValue(offset, 0, 568, 10, 0)
        picView5.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        picView5.transform = CGAffineTransformScale(picView5.transform, CGFloat(scale5), CGFloat(scale5))
        picView5.transform = CGAffineTransformRotate(picView5.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        var tx3 = convertValue(offset, 0, 568, -15, 0)
        var ty3 = convertValue(offset, 0, 568, -380, 0)
        var scale3 = convertValue(offset, 0, 568, 2, 1)
        var rotation3 = convertValue(offset, 0, 568, -10, 0)
        picView3.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        picView3.transform = CGAffineTransformScale(picView3.transform, CGFloat(scale3), CGFloat(scale3))
        picView3.transform = CGAffineTransformRotate(picView3.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        var tx6 = convertValue(offset, 0, 568, 10, 0)
        var ty6 = convertValue(offset, 0, 568, -380, 0)
        var scale6 = convertValue(offset, 0, 568, 2, 1)
        var rotation6 = convertValue(offset, 0, 568, 10, 0)
        picView6.transform = CGAffineTransformMakeTranslation(CGFloat(tx6), CGFloat(ty6))
        picView6.transform = CGAffineTransformScale(picView6.transform, CGFloat(scale6), CGFloat(scale6))
        picView6.transform = CGAffineTransformRotate(picView6.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
    }

}

