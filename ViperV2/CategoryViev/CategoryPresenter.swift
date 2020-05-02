//
//  CategoryPresenter.swift
//  ViperV2
//
//  Created by Илья Лобков on 27/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

class Presenter: presenterInput {
    
    var category = Array<String>()
    
    var interactor: InteractorInput! = Interactor()
    var router: RouterInput!
    
    func viewDidLoad(tableView: UITableView, sender: UIViewController) {
        
        interactor.output = self
        
        interactor.retrieveCategory(tableView: tableView)
    } 
    
}

extension Presenter: InteractorOutput, RouterOutput {
    var updateData: Array<String> {
        get {
            return category
        }
        set {
            category = newValue
        }
    }
    
    
}

