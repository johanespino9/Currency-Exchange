//
//  UIViewController+Extension.swift
//  Currency-Exchange
//
//  Created by Johan Espino on 3/06/21.
//

import UIKit

extension UIViewController {
  
  func hideKeyboardWhenTappedAround() {
      let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
      tap.cancelsTouchesInView = false
      view.addGestureRecognizer(tap)
  }

  @objc func dismissKeyboard() {
      view.endEditing(true)
  }
  
  static func instantiate<T:UIViewController>(fromStoryboard storyboardName:String) -> T {
      let bundle = Bundle(for: T.self)
      let storyboard = UIStoryboard(name: storyboardName, bundle: bundle)
      let identifier = String(describing: T.self)
      guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
          fatalError("The storyboard identifier does not exist.")
      }
      return viewController
  }
  
}
