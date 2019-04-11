//
//  ViewController.swift
//  SolsticeContacts
//
//  Created by Husein Kareem on 4/9/19.
//  Copyright © 2019 Husein Kareem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        ContactAPI.fetchContacts { (contacts, error) in
            //TODO:
        }
    }


}

