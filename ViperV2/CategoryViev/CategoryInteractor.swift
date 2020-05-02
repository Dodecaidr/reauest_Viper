//
//  CategoryInteractor.swift
//  ViperV2
//
//  Created by Илья Лобков on 27/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class Interactor: InteractorInput {
    
    
    var output: InteractorOutput?
    
    func retrieveCategory(tableView: UITableView) {
        CatigoriesNetworcService.getComponents { (respos) in
            
            for catigory in respos.catigories {
                self.output?.updateData.append(catigory.name)
            }
            
            DispatchQueue.main.async {
                tableView.reloadData()
            }
        }
    }
    
}
