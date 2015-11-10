//
//  ViewController.swift
//  KMPlaceholderTextView
//
//  Created by Zhouqi Mo on 3/4/15.
//  Copyright (c) 2015 Zhouqi Mo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var placeholderTextView: KMPlaceholderTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWasShown:", name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillBeHidden:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIKeyboardWillHideNotification, object: nil)
    }
    
    func keyboardWasShown(notification: NSNotification)
    {
        let info = notification.userInfo
        var kbRect = info![UIKeyboardFrameEndUserInfoKey]!.CGRectValue
        kbRect = view.convertRect(kbRect, fromView: nil)
        
        var contentInsets = placeholderTextView.contentInset
        contentInsets.bottom = kbRect.size.height
        placeholderTextView.contentInset = contentInsets
        placeholderTextView.scrollIndicatorInsets = contentInsets
    }
    
    func keyboardWillBeHidden(notification: NSNotification)
    {
        var contentInsets = placeholderTextView.contentInset
        contentInsets.bottom = 0.0
        placeholderTextView.contentInset = contentInsets
        placeholderTextView.scrollIndicatorInsets = contentInsets
    }
    
}

