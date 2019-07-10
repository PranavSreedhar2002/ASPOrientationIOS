//
//  MenuViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/6/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

enum MenuType: Int{
    case home
    case firstyear
    case map
    case welcome
    case parent
    case gradebonding
    case important
    case onlineresources
    case athletics
    case cocurricular
    case cafeteria
    case bus
    case calendar
    case communicate
    case share
}

class MenuViewController: UITableViewController {
    
    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true){ [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
        
    }

}
