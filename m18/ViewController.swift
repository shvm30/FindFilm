//
//  ViewController.swift
//  m18
//
//  Created by Владимир on 09.03.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var array:[Results] = []
    var url = "https://imdb-api.com/API/Search/k_7jxsmhhk/"
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "cell", bundle: nil), forCellReuseIdentifier: "cell")
        

    }


}

