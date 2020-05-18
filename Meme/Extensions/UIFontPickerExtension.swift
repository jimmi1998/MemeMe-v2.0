//
//  UIFontPickerExtension.swift
//  MemeMe v2.0
//
//  Created by Jimit Raval on 21/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation
import UIKit

extension MemeEditorViewController: UIFontPickerViewControllerDelegate {
    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        guard let descriptor = viewController.selectedFontDescriptor else { return }
        let selectedFont = UIFont(descriptor: descriptor, size: 30)
        TextAttributes.selectedFont = descriptor.postscriptName
        self.topTextField.font = selectedFont
        self.bottomTextField.font = selectedFont
        
    }
}
