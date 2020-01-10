//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by 大野宏樹 on 2020/01/09.
//  Copyright © 2020 Hiroki.Ono. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController {
    
    @IBOutlet weak var zoomImage: UIImageView!
    
    let zoomImagesAll = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5")]
    
    var imageCount2 = 0
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoomImage.image = zoomImagesAll[imageCount2]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
