//
//  ViewController.swift
//  CustomCells
//
//  Created by Ilya on 09.08.17.
//  Copyright © 2017 Ilya. All rights reserved.
//

import UIKit

struct cellData {
    let cell : Int!
    let text : String!
    let image : UIImage!
}

class TableViewController: UITableViewController {

    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell : 1, text : "111", image: #imageLiteral(resourceName: "Coast_Sunrises_and_sunsets_Waves_USA_Ocean_Kaneohe_521540_1280x775")),
                           cellData(cell : 2, text : "222", image: #imageLiteral(resourceName: "315193")),
                           cellData(cell : 1, text : "333", image:
            #imageLiteral(resourceName: "Coast_Sunrises_and_sunsets_Waves_USA_Ocean_Kaneohe_521540_1280x775"))]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLbl.text = arrayOfCellData[indexPath.row].text
            return cell
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            return cell
        }
        else{
            let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLbl.text = arrayOfCellData[indexPath.row].text
            return cell
        }
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1{
            return 261
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            return 110
        }
        else{
            return 261
        }
    }
}

