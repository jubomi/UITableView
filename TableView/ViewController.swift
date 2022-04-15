//
//  ViewController.swift
//  TableView
//
//  Created by 주보미 on 2022/04/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellIdentifier = "cell"
   // let customCellIdentifier = "customCell"
    
    let korean: [String] = ["가", "나", "다", "라", "마", "바", "사", "아", "자", "차", "카", "타", "파", "하"]
    let english: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    let dates: [Date] = []
    
    let dateFormatter = DateFormatter()
    let timeFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        dateFormatter.dateStyle = .medium
        timeFormatter.timeStyle = .medium
        
    }

    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 3
//    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return korean.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomTableViewCell else {
             return UITableViewCell()
        }
        cell.leftLabel.text = korean[indexPath.row]
        cell.rightLabel.text = "indexPath.row-\(indexPath.row)"
        return cell
                 
    }
    
}
