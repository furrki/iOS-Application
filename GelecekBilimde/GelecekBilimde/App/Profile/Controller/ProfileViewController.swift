//
//  ProfileViewController.swift
//  GelecekBilimde
//
//  Created by Burak Furkan Asilturk on 30.09.2019.
//  Copyright © 2019 Burak Furkan Asilturk. All rights reserved.
//

import UIKit
import SDWebImage
import SafariServices

final class ProfileViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet private weak var tableView: UITableView!
    
    private var profileDataSourceAndDelegate: ProfileDataSourceAndDelegate!

	// MARK: - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        profileDataSourceAndDelegate = ProfileDataSourceAndDelegate(vc: self)
        setView()
    }
}

// MARK: - Auxiliary Methods
extension ProfileViewController {
    func setView() {
        //NavBar title customizations
        navigationController?.navigationBar.barTintColor = UIColor.barTintColor
        let attributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = attributes
        //Set table view delegate and data source
        tableView.delegate = profileDataSourceAndDelegate
        tableView.dataSource = profileDataSourceAndDelegate
    }
}
