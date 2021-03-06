//
//  UIViewControllerExtension.swift
//  MemeMe v2.0
//
//  Created by Jimit Raval on 21/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setUpNavigationItems() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.openMemeEditorAction))
    }

    @objc func openMemeEditorAction() {
        let memeEditorVC = self.storyboard!.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        memeEditorVC.modalPresentationStyle = .fullScreen
        self.present(memeEditorVC, animated: true, completion: nil)
    }
    
    //Check for data available or not
    func checkMemeDataAlert(memes: [Meme]) {
        if memes.isEmpty {
            let alertController = UIAlertController(title: "No meme is available.", message: "Create your own for fun.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Create", style: .default, handler: { (_) in
                self.openMemeEditorAction()
            }))
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }

}
