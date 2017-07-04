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
    
    
    var data = [["Ayush Verma","Hey how are you let's hang out sometime...!!"],["Dhiraj","Hey how are you let's hang out sometime...!!"],["Mehul Singhal","Hey how are you let's hang out sometime...!!"],["Aman kumar","Hey how are you let's hang out sometime...!!"],["Mehul Sharma","Hey how are you let's hang out sometime...!!"],["Vaidehi Deshpandey","Hey how are you let's hang out sometime...!!"],["Aman Sharma","Hey how are you let's hang out sometime...!!"],["Mayank Gupta","Hey how are you let's hang out sometime...!!"],["Ankit Singh","Hey how are you let's hang out sometime...!!"],["Srikar Kalivarapu","Hey how are you let's hang out sometime...!!"],["Bhaskar Prakash","Hey how are you let's hang out sometime...!!"]]
    
    
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
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! customChatCell
        
        cell.profileImageView.backgroundColor = UIColor(red: CGFloat(arc4random()%255)/255.0, green: CGFloat(arc4random()%255)/255.0, blue: CGFloat(arc4random()%255)/255.0, alpha: 1.0)
        cell.profileImageView.layer.cornerRadius = 35.0
        cell.profileImageView.clipsToBounds = true
        cell.personNameLabel.text = data[(indexPath.row) % 11][0]
        cell.messagePreviewLabel.text = data[(indexPath.row) % 11][1]
        cell.timeLabel.text = "0\(arc4random() % 10):\(arc4random() % 60)pm"
        
        return cell
    }


}

