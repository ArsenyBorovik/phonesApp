//
//  ViewController.swift
//  AppThree
//
//  Created by Арсений on 10/29/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataSource: [Phone] = []
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.delegate = self
        table.dataSource = self
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.reuseIdentifier)
        
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        dataSource = DataManager.shared.obtainPhones()
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.reuseIdentifier, for: indexPath) as! CustomTableViewCell
        let phone = dataSource[indexPath.row]
        cell.configure(with: phone)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPhone = dataSource[indexPath.row]
        navigationController?.pushViewController(DetialViewController(with: selectedPhone), animated: true)
    }

}

