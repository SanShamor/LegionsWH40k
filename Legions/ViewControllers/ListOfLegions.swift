//
//  LegionsList.swift
//  Legions
//
//  Created by Александр on 24.05.2021.
//

import UIKit

class ListOfLegions: UITableViewController {
    
    private var legionList = Legion.getLegionList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        legionList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LegionsCell", for: indexPath) as! LegionsCell
        let legion = legionList[indexPath.row]
        
        cell.configureCell(legion: legion)
        return cell
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let legion = legionList[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: legion)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let legionDetailsVC = segue.destination as? TabBarVC else { return }
        //legionDetailsVC.legion = sender as? Legion
        legionDetailsVC.legion = sender as? Legion
    }
    
}

