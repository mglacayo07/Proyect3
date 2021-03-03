//
//  ViewController.swift
//  Proyect3
//
//  Created by Maria Lacayo on 21/02/20.
//  Copyright © 2020 dwim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        nextButton.layer.cornerRadius = 20
        //PARA MANDAR A LLAMAR UNA VISTA CON SEGUE
        //performSegue(withIdentifier: "toLogin", sender: self)
        
    }

    @IBAction func login(_ sender: UIButton){
        let loginView = ThirdViewController()
        //Cuando no se tiene navigationController
        //present(loginView, animated: true, completion: nil)
        
        //Cuando se tiene navigationController
        navigationController?.pushViewController(loginView, animated: true)
    }
    
    //metodo que se ejecuta antes de la siguiente vista
    //UNICAMETE con interface builder con storyboard
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as! SecondViewController
        secondView.deposito = "Hola Mundo"
    }
}

