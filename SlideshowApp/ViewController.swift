//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 大野宏樹 on 2020/01/09.
//  Copyright © 2020 Hiroki.Ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var timer: Timer!
    
    var imageCount = 0
    
    @objc func loopTimer(_timer:Timer){
        if imageCount == 4{
            imageCount = 0
        }else{
            imageCount += 1
        }
        imageView.image = imagesAll[imageCount]
    }
    
    let imagesAll = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = imagesAll[0]
        // Do any additional setup after loading the view.
    }
    @IBAction func playStopTimer(_ sender: Any) {
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(loopTimer(_timer:)), userInfo: nil, repeats: true)
        }else{
            self.timer.invalidate()
            self.timer = nil
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if self.timer != nil{
        self.timer.invalidate()
        self.timer = nil
        }
        
        if imageCount == 4{
            imageCount = 0
        }else{
            imageCount += 1
        }
        imageView.image = imagesAll[imageCount]
    }
    @IBAction func backButton(_ sender: Any) {
        if self.timer != nil{
        self.timer.invalidate()
        self.timer = nil
        }
        if imageCount == 0{
            imageCount = 4
        }else{
            imageCount -= 1
        }
        imageView.image = imagesAll[imageCount]
    }
    
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        let zoomViewController:ZoomViewController = segue.destination as! ZoomViewController
        zoomViewController.imageCount2 = imageCount
    }
    
    
   
        
    
    @IBAction func tapZoom(_ sender: Any) {
        
        performSegue(withIdentifier: "zoom", sender: nil)
    }
    @IBAction func unwind(for segue:UIStoryboardSegue){
        
    }
}

