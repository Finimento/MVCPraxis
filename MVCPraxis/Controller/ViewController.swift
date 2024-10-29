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
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

extension ViewController: UITableViewDelegate{
    
}

