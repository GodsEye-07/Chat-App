//
//  ChatDetailVC.swift
//  Chat App
//
//  Created by Ayush Verma on 06/07/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class ChatDetailVC: UIViewController {

    @IBOutlet weak var ComposeMessageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ComposeMessageField.layer.cornerRadius = 15.0
        self.ComposeMessageField.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func AttachmentsButton(_ sender: UIButton) {
        
        let action = UIAlertController(title: nil  , message: "What do you want to Send?", preferredStyle: .actionSheet)
        
        let option1 = "Camera"
        let cameraAction = UIAlertAction(title: option1, style: .default, handler: nil)
        action.addAction(cameraAction)
        
        let gallery = UIAlertAction(title: "Gallery", style: .default, handler: nil)
        action.addAction(gallery)
        
        let document = UIAlertAction(title: "Documents", style: .default, handler: nil)
        action.addAction(document)
        
        let contacts = UIAlertAction(title: "Contacts", style: .default, handler: nil)
        action.addAction(contacts)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        action.addAction(cancelAction)
        
        present(action, animated: true, completion: nil)
        
    }

    

}
