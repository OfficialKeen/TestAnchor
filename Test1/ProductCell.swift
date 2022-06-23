//
//  ProductCell.swift
//  Test1
//
//  Created by keenoi on 23/06/22.
//

import UIKit

class ProductCell: UITableViewCell {
    
    var imgView = UIImageView()
    var name = UILabel()
    var idNo = UILabel()
    var checkoutButton = UIButton(type: .system)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setView()
        setAnchor()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ProductCell {
    func setView() {
        imgView.setObject { img in
            img.image = UIImage(systemName: "person.circle")
            img.setDimensions(width: 30, height: 30)
            img.layer.cornerRadius = 30 / 2
        }
        
        name.setObject { lbl in
            lbl.text = "Emelie Clarke"
            lbl.font = .systemFont(ofSize: 14, weight: .medium)
        }
        
        idNo.setObject { lbl in
            lbl.text = "123123123123"
            lbl.font = .systemFont(ofSize: 10, weight: .light)
        }
        
        checkoutButton.setObject { btn in
            btn.setTitle("Checkout", for: .normal)
            btn.backgroundColor = UIColor(named: "#00C993")
            btn.layer.cornerRadius = 4
        }
    }
    
    func setAnchor() {
        contentView.addSubview(imgView)
        imgView.centerY(inView: contentView, leftAnchor: contentView.leftAnchor, paddingLeft: 10)
        
        let stack = UIStackView(arrangedSubviews: [name, idNo])
        stack.axis = .vertical
        stack.spacing = 4
        stack.distribution = .equalCentering
        
        contentView.addSubview(stack)
        stack.anchor(top: contentView.topAnchor, left: imgView.rightAnchor, bottom: contentView.bottomAnchor, right: contentView.rightAnchor)
    }
}
