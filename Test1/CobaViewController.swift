//
//  CobaViewController.swift
//  Test1
//
//  Created by keenoi on 23/06/22.
//

import UIKit

class CobaViewController: UIViewController {

    var tableView = UITableView()
    
    //var arrBarang = ["Meja", "Kursi", "Lemari"]
    
    var headerView = HeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bindData()
    }
}

extension CobaViewController {
    fileprivate func bindData() {
        setView()
        setTableView()
        setAnchor()
    }
    
    fileprivate func setView() {
        view.backgroundColor = .white
        title = "View Appointment"
    }
    
    fileprivate func setTableView() {
        tableView.register(ProductCell.self, forCellReuseIdentifier: "cellId")
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableHeaderView = headerView
    }
    
    fileprivate func setAnchor() {
        view.addSubview(tableView)
        tableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor)
    }
}

extension CobaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! ProductCell
        
        return cell
    }
}

extension CobaViewController: UITableViewDelegate {}
