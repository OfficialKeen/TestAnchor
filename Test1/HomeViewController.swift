//
//  HomeViewController.swift
//  Test1
//
//  Created by keenoi on 11/03/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bindData()
    }
}

extension HomeViewController {
    fileprivate func bindData() {
        setView()
        setLibrary()
        setTableView()
        setAnchor()
    }
    
    fileprivate func setView() {
        view.backgroundColor = .white
    }
    
    fileprivate func setLibrary() {
        
    }
    
    fileprivate func setTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
    }
    
    fileprivate func setAnchor() {
        //view.addSubview(tableView)
        //tableView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 10, paddingLeft: 16, paddingBottom: 10, paddingRight: 16)
        
        view.VStack(tableView).padding([.left, .right], amount: 50)
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Test \(indexPath.row)"
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {}
