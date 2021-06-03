//
//  ViewController.swift
//  Currency-Exchange
//
//  Created by Johan Espino on 2/06/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var amountSent: UITextField!
  @IBOutlet weak var receivedAmount: UITextField!
  @IBOutlet weak var buyAmount: UILabel!
  @IBOutlet weak var sellAmount: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
    // Do any additional setup after loading the view.
  }

  @IBAction func changeCurrencyToSend(_ sender: Any) {
    self.startCurrencySelector()
  }
  
  @IBAction func changeCurrencyToReceive(_ sender: Any) {
    self.startCurrencySelector()
  }
  
  @IBAction func exchangeCurrencies(_ sender: Any) {
    
  }
  
  @IBAction func calculateFinalAmount(_ sender: Any) {
    self.receivedAmount.text = "\((self.amountSent.text!.toDouble() ?? 0.0) * (self.buyAmount.text!.toDouble() ?? 0.0))"
  }
  
  func startCurrencySelector(){
    let currencySelectorVC: CurrencySelectorViewController = UIViewController.instantiate(fromStoryboard: "CurrencySelector")
    let navC = UINavigationController(rootViewController: currencySelectorVC)
    navC.modalPresentationStyle = .fullScreen
    self.present(navC, animated: true, completion: nil)
  }
  
  private func setupViews(){
    self.buyAmount.text = "3.80"
    self.sellAmount.text = "3.90"
    self.hideKeyboardWhenTappedAround()
    
  }
}

