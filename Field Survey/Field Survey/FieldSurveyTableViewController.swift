//
//  FieldSurveyTableViewController.swift
//  Field Survey
//
//  Created by Olivia Morgan Chambliss on 7/24/20.
//  Copyright © 2020 Olivia Chambliss. All rights reserved.
//

import UIKit

class FieldSurveyTableViewController: UITableViewController {
    
    var fieldSurveyImages = [String]()
    var fieldSurveyNames = [String]()
    var fieldSurveyDescription = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()

    }
    
    func initialize() {
        fieldSurveyNames = ["Red-tailed Hawk",
                            "American Bullfrog",
                            "Cottonmouth Snake",
                            "Prairie Lizard",
                            "Red-spotted Purple Butterfly",
                            "Milkweed Bug",
                            "Largemouth Bass",
                            "Poison Oak",
                            "Rosy Maple Moth",
                            "Groundhog",
                            "Black Squirrel",]
        
        fieldSurveyImages = ["bird.png",
                             "amphibian.png",
                             "reptile.png",
                             "reptile.png",
                             "insect.png",
                             "insect.png",
                             "fish.png",
                             "plant.png",
                             "insect.png",
                             "mammal.png",
                             "mammal.png"]
        
        fieldSurveyDescription = [ "Jun 14, 2017 at 11:00:03 AM",
                                   "Jun 15, 2017 at 04:10:23 AM",
                                   "Jun 15, 2017 at 04:15:12 AM",
                                   "Jun 16, 2017 at 08:12:45 AM",
                                   "Jun 17, 2017 at 09:26:42 AM",
                                   "Jun 17, 2017 at 09:45:06 AM",
                                   "Jun 18, 2017 at 10:14:03 AM",
                                   "Jun 19, 2017 at 03:05:32 AM",
                                   "Jun 19, 2017 at 03:39:08 AM",
                                   "Jun 20, 2017 at 05:32:39 AM",
                                   "Jun 20, 2017 at 06:17:01 AM"]
        
        tableView.estimatedRowHeight = 50
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fieldSurveyNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "FieldSurveyTableCell", for: indexPath) as! FieldSurveyTableViewCell
        
        let row = indexPath.row
        cell.FieldSurveyLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        cell.FieldSurveyLabel.text = fieldSurveyNames[row]
        cell.FieldSurveyDescription.text = fieldSurveyDescription[row]
        cell.FieldSurveyImage.image = UIImage(named: fieldSurveyImages[row])
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
