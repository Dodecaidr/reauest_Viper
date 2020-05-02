//
//  CtegoryProtocol.swift
//  ViperV2
//
//  Created by Илья Лобков on 27/04/2020.
//  Copyright © 2020 Илья Лобков. All rights reserved.
//

import UIKit

protocol presenterInput: class {
    var  category: Array<String> { get set }
    
    func viewDidLoad(tableView: UITableView, sender: UIViewController)
}
protocol presenterOutput: class {
        
    func updateCategory(category: [Catigories])
}

protocol InteractorInput: class {
    func retrieveCategory(tableView: UITableView)
        var output : InteractorOutput? { get set }
}


protocol InteractorOutput: class {
    var updateData: Array<String> { get set }
}

protocol RouterInput: class {
    
}
protocol RouterOutput: class {
    
}
