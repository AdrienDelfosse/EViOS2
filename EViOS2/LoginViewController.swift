//
//  LoginViewController.swift
//  EViOS2
//
//  Created by Student08 on 22/06/2021.
//

import UIKit

class LoginViewController: UIViewController {
    var check = false
    @IBOutlet weak var fbConnexionButton: UIButton!
    @IBOutlet weak var fbCloseButton: UIButton!
    @IBOutlet weak var fbPasswordTextField: UITextField!
    @IBOutlet weak var fbLoginTextField: UITextField!
    @IBOutlet weak var fbImageView: UIImageView!
    @IBOutlet weak var fbLoginView: UIView!
    @IBOutlet weak var connexionButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var googleImageView: UIImageView!
    @IBOutlet weak var googleLoginView: UIView!
    @IBAction func didPressCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func didPressConnexionButton(_ sender: Any) {
        if isLoginValid(){
            if let pokemonViewController = storyboard?.instantiateViewController(identifier: "TabBarViewController")  {
                pokemonViewController.modalPresentationStyle = .fullScreen
        
                present(pokemonViewController, animated: true, completion: nil)
            }
        }else{
            displayAlert()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    
    
    func setupView(){
        googleLoginView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.90)
        googleImageView.image = UIImage(named: "google_header")
        closeButton.setTitle("Close", for: .normal)
        closeButton.setTitleColor(.white, for: .normal)
        loginTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
        connexionButton.setTitle("Connection", for: .normal)
        connexionButton.setTitleColor(.black, for: .normal)
        connexionButton.backgroundColor = .yellow
        
        fbLoginView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.90)
        fbImageView.image = UIImage(named: "facebook_header")
        fbCloseButton.setTitle("Close", for: .normal)
        fbCloseButton.setTitleColor(.white, for: .normal)
        fbLoginTextField.placeholder = "Login"
        fbPasswordTextField.placeholder = "Password"
        fbConnexionButton.setTitle("Connection", for: .normal)
        fbConnexionButton.setTitleColor(.black, for: .normal)
        fbConnexionButton.backgroundColor = .yellow
        googleLoginView.isHidden = true
        if(check == true){
            fbLoginView.isHidden = true
            googleLoginView.isHidden = false
        }else{
            fbLoginView.isHidden = false
            googleLoginView.isHidden = true
        }
    }
        
        
        func isLoginValid()-> Bool{
            if let userText = loginTextField.text, let passwordText = passwordTextField.text, let fbUserText = fbLoginTextField.text, let fbPasswordText = fbPasswordTextField.text {
                if(check == true){
                       if userText.isEmpty || passwordText.isEmpty {
                           return false
                       } else {
                           if userText.contains("@") {
                               return true
                           }
                       }
                   
            }else {
                if fbUserText.isEmpty || fbPasswordText.isEmpty {
                    return false
                } else {
                    if fbUserText.contains("@") {
                        return true
                    }
                }
            }
            
            }
            return false
        }
                
            
    
    private func displayAlert() {
            let alert = UIAlertController(title: "Error", message: "Login and/or email invalid", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                // Action
            }))

            self.present(alert, animated: true, completion: nil)
        }
    

  

}
