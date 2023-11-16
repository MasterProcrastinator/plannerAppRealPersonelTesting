//
//  ViewController.swift
//  plannerApp
//
//  Created by MASON BARTELL on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
// hello
    @IBOutlet weak var tableViewOutlet: UITableView!   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addAction(_ sender: UIButton) {
      performSegue(withIdentifier: "Addsegue", sender: self)
    }
   
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
        
        
        
        
        
    }
    
    
}

