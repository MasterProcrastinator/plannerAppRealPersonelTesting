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
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
        
        AppData.title = (defaults.array(forKey: "theTitles") as? [String] ?? [""])
        
        AppData.date = (defaults.array(forKey: "theDates") as? [String] ?? [""])
        
        
        tableViewOutlet.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    @IBAction func addAction(_ sender: UIButton) {
      performSegue(withIdentifier: "Addsegue", sender: self)
    }
   
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        defaults.set(AppData.title, forKey: "theTitles")
        defaults.set(AppData.date, forKey: "theDates")
        
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

