//
//  MemeDetailViewController.swift
//  MemeMe v2.0
//
//  Created by Jimit Raval on 21/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    
    @IBOutlet weak var memeImage: UIImageView!
    
    var meme: Meme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.memeImage.image = meme?.memeImage
    }   

}
