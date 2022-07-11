//
//  ViewController.swift
//  news1
//
//  Created by webskitters on 07/07/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tblnewseview: UITableView!
    
    let newsArray = ["abp", "news", "24hour", "banglanews"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblnewseview.dataSource = self
        tblnewseview.delegate = self
        
        
       
        // Do any additional setup after loading the view.
    }
    private func numberOfSectionsnumberOfSectionsnumberOfSections(in tableView: UITableView)-> Int{
        return 1
    }
    
    func tableView(_ _tableview: UITableView,numberOfRowsInSection section:Int) ->Int {
        return newsArray.count
    }
    func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
      
        let cell = tblnewseview.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = newsArray[indexPath.row]
        
            cell.backgroundColor = UIColor.yellow
        print(cell.textLabel ?? 3 ?? 3 ?? 6 ?? 3 ?? 5)
        
        return cell
    }

    
    
@IBAction func click(_ sender: Any) {
    guard let News_detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "News_detailsViewController") as? News_detailsViewController else { return }
    self.navigationController?.pushViewController(News_detailsViewController, animated: true)
   
        
    }
}
