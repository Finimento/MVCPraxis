//
//  ViewController.swift
//  MVCPraxis
//
//  Created by Mike Finimento on 29.10.24.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Data
    var persons = Person.loadPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].vorname + " " + persons[indexPath.row].nachname
        return cell
    }
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

