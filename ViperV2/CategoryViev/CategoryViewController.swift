//
//  CategoryViewController.swift
//  ViperV2
//
//  Created by Илья Лобков on 27/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var tabelView: UITableView!
    
    var presenter: presenterInput! = Presenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad(tableView: tabelView, sender: self)
        
    }

}

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return presenter.category.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CategoryCell
     
        cell.nameCategoryTL.text = presenter.category[indexPath.row]
        
        return cell
    }
}
