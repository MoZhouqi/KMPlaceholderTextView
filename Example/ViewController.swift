//
//  ViewController.swift
//  KMPlaceholderTextView
//
//  Created by Zhouqi Mo on 3/4/15.
//  Copyright (c) 2015 Zhouqi Mo. All rights reserved.
//

import UIKit
import KMPlaceholderTextView

class ViewController: UIViewController {
    
    @IBOutlet weak var placeholderTextView: KMPlaceholderTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardDidShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWasShown(notification: NSNotification)
    {
        let info = notification.userInfo!
        var kbRect = (info[UIKeyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        kbRect = view.convert(kbRect, from: nil)
        
        var contentInsets = placeholderTextView.contentInset
        contentInsets.bottom = kbRect.size.height
        placeholderTextView.contentInset = contentInsets
        placeholderTextView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(notification: NSNotification)
    {
        var contentInsets = placeholderTextView.contentInset
        contentInsets.bottom = 0.0
        placeholderTextView.contentInset = contentInsets
        placeholderTextView.scrollIndicatorInsets = contentInsets
    }
    
}

