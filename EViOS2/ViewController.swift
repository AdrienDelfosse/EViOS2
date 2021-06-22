//
//  ViewController.swift
//  EViOS2
//
//  Created by Student08 on 22/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fbButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    @IBOutlet weak var connexionLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var backgroundView: UIView!
    
    @IBAction func didPressGoogleButton(_ sender: Any) {
        
        if let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController {
            loginViewController.modalPresentationStyle = .fullScreen
            loginViewController.check = true
            present(loginViewController, animated: true, completion: nil)
        }
    }
    @IBAction func didPressFbButton(_ sender: Any) {
        if let loginViewController = storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController {
            loginViewController.modalPresentationStyle = .fullScreen
            loginViewController.check = false
            present(loginViewController, animated: true, completion: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }

    func setupView(){
        backgroundView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.90)
        headerImageView.image = UIImage(named: "header_pokemon")
        connexionLabel.text = "Connexion via:"
        connexionLabel.textColor = .yellow
        fbButton.setImage(UIImage(named:"facebook_ico"), for: .normal)
        fbButton.setTitle("Facebook", for: .normal)
        
        googleButton.setImage(UIImage(named: "google_ico"), for: .normal)
        googleButton.setTitle("Google", for: .normal)
      
        
        
        
    }

}

 
