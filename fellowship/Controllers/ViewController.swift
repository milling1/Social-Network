//
//  ViewController.swift
//  fellowship
//
//  Created by user on 10.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Скрываю клавиатуру
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
        view.addGestureRecognizer(tapGR)
    }
    
    
    @IBAction func logInButton(_ sender: UIButton) {
       
    }
    //СОЗДАЕМ ПАРОЛЬ
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        let checkResult = checkUserData()
//        if !checkResult {
//            showError()
//        }
//        return checkResult
//    }
//
//    func checkUserData() -> Bool {
//        guard let login = loginText.text,
//              let password = passwordText.text else {return false}
//        if login == "admin" && password == "qwer" {
//            return true
//        }else {
//            return false
//        }
//    }
//
//    func showError() {
//        let alert = UIAlertController(title: "ATENTION", message: "Login or password is invalid", preferredStyle: .alert)
//
//        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//    }
   
    
    
    
    @objc func hideScreen() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willShowKeybord(_:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(willHideKeybord(_:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
        
        //Скрываем серую полоску scrollView
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    @objc func willShowKeybord(_ notification: Notification) {
        guard let info = notification.userInfo as NSDictionary?,
              let keyybordSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue else
              {return}
        
        let keybordHeight = keyybordSize.cgRectValue.size.height
        
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keybordHeight, right: 0)
    }
    
    @objc func willHideKeybord(_ notification: Notification) {
        print(#function)
    }
    
}

