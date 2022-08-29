//
//  TableViewController.swift
//  TestForCell
//
//  Created by 王杰 on 2022/8/19.
//

import UIKit

//TableViewController.swift
class TableViewController: UITableViewController {
    
    let dataSourse = ["","","","","test","test","test","test","test","test","test","test","test","test","test","test","test"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(TestTableViewCell.self, forCellReuseIdentifier: TestTableViewCell.reuseIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.reuseIdentifier) as? TestTableViewCell

        print(indexPath.row)

        cell!.data = dataSourse[indexPath.row]
        
        print(cell!.description)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourse.count
    }
}
