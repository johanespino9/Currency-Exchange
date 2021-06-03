//
//  String+Extension.swift
//  Currency-Exchange
//
//  Created by Johan Espino on 3/06/21.
//

import UIKit

extension String {
  
  func toDouble () -> Double? {
      return NumberFormatter().number(from: self)?.doubleValue
  }
}


