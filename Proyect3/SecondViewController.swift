//
//  SecondViewController.swift
//  Proyect3
//
//  Created by Maria Lacayo on 21/02/20.
//  Copyright © 2020 dwim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var holaLabel: UILabel!
    
    var deposito: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        closeButton.layer.cornerRadius = 5
        holaLabel.text = deposito  
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cerrar(_ sender: UIButton){
    //dismiss(animated: true, completion: nil)
    navigationController?.popViewController(animated: true)
    }
    
    
}

