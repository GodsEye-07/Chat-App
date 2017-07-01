//
//  ViewController.swift
//  Chat App
//
//  Created by Ayush Verma on 01/07/17.
//  Copyright © 2017 ayush. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tabelView: UITableView!
    
    
    var data = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabelView.delegate = self
        self.tabelView.dataSource = self
        
        
        self.title = "Recent Chats"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

