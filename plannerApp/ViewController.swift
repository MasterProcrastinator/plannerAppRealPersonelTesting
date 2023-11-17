//
//  ViewController.swift
//  plannerApp
//
//  Created by MASON BARTELL on 11/14/23.
//

import UIKit

class AppData {
    static var title = [String]()
    static var date = [String]()
    
    
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    @IBAction func addAction(_ sender: UIButton) {
      performSegue(withIdentifier: "Addsegue", sender: self)
    }
   
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.title.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = AppData.title[indexPath.row]
        cell.detailTextLabel?.text = AppData.date[indexPath.row]
               return cell
    }

    
    
    
    
    
    
}

