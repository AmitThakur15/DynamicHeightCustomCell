
//  Created by Amit Thakur on 10/09/20.
//  Copyright © 2020 Amit Thakur. All rights reserved.


import Foundation
import UIKit

class CustomCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupVeiw()
    }
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    func setupVeiw(){
        backgroundColor = UIColor.blue
        contentView.heightAnchor.constraint(greaterThanOrEqualToConstant: 70).isActive = true
        contentView.addSubview(containerView)
        containerView.addSubview(nameLabel)
        containerView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor,constant: -5).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
