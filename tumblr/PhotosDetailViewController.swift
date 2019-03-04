//
//  PhotosDetailViewController.swift
//  tumblr
//
//  Created by Kevin Chen on 3/3/2019.
//  Copyright © 2019 New York University. All rights reserved.
//

import UIKit

class PhotosDetailViewController: UIViewController {
    
    var post: [String:Any]!
    
    @IBOutlet weak var photo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            // 1.
            let ph = photos[0]
            // 2.
            let originalSize = ph["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            
            photo.af_setImage(withURL: url!)
        }
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
