//
//  Meme.swift
//  MemeMe v2.0
//
//  Created by Jimit Raval on 21/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//
import Foundation
import UIKit

struct Meme {
    let topText: String
    let bottomText: String
    let originalImage: UIImage
    let memeImage: UIImage
       
    static func saveMeme(meme: Meme) {
        self.storeToSharedModel(meme)
        UIImageWriteToSavedPhotosAlbum(meme.memeImage, self, nil, nil)
        
    }
    
    static func storeToSharedModel(_ meme: Meme) {
        memes.append(meme)
    }
}
