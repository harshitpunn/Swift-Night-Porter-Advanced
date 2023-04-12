//
//  ViewController.swift
//  Night Porter App 2
//
//  Created by Harshit Punn on 2023-02-14.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Table View Delegate Methods
    
    
    
    
    @IBAction func toggleDarkMode(_ sender: Any) {
        
        let mySwitch = sender as! UISwitch
        
        if mySwitch.isOn {
            view.backgroundColor = UIColor.darkGray
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("You selected a row \(indexPath.row) in section \(indexPath.section)")
    }
    
    // Table View Data Source methods
    func numberOfSections(in tableView: UITableView) -> Int {
        tableView.backgroundColor = UIColor.clear
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count;
        case 1:
            return weeklyTasks.count;
        case 2:
            return monthlyTasks.count;
        default:
            return 0;
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't be here"
        }
        cell.backgroundColor = UIColor.clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    let dailyTasks = ["Check all windows", "Check all doors", "Is the boiler fueled", "Empty trash containers", "If freezing check water pipes", "Document \"strangeand unusual \" occurences"];
    
    let weeklyTasks = ["Check inside all cabins","Flush all lavatories in cabin", "Walk e perimeter of the property"];
    
    let monthlyTasks = ["Test security alarms","Test motion decorators", "Test smoke alarms"];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

