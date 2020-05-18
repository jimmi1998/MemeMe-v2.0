//
//  UITextFieldDelegateExtension.swift
//  MemeMe v2.0
//
//  Created by Jimit Raval on 21/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation
import UIKit

extension MemeEditorViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == self.topTextField {
            self.topTextField.text = ""
        }else {
            self.bottomTextField.text = ""
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.topTextField {
            self.topTextField.resignFirstResponder()
        }else {
            self.bottomTextField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.topTextField {
            if self.topTextField.text!.isEmpty {
                self.topTextField.text = "TOP"
            }
        }else {
            if self.bottomTextField.text!.isEmpty {
                self.bottomTextField.text = "BOTTOM"
            }
        }
    }
    
}
