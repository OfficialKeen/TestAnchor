//
//  TestViewController.swift
//  Test1
//
//  Created by keenoi on 21/06/22.
//

import UIKit

class TestViewController: UIViewController {
    
    let tableView = UITableView()
    
    var array = ["Mobil", "Motor", "Sepeda"]

    override func viewDidLoad() {
        super.viewDidLoad()

        bindData()
    }
}

extension TestViewController {
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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    fileprivate func setAnchor() {
        view.addSubview(tableView)
        tableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor)
        
        //view.VStack(tableView)
    }
}

extension TestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}

extension TestViewController: UITableViewDelegate {}
