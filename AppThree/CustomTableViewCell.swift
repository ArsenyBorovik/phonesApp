//
//  CustomTableViewCell.swift
//  AppThree
//
//  Created by Арсений on 10/29/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private lazy var modelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var yearLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var avatarImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    func configure(with phone: Phone) {
        avatarImageView.image = phone.image
        modelLabel.text = phone.model
        yearLabel.text = String(phone.year)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        let mainStack = UIStackView(arrangedSubviews: [modelLabel, yearLabel])
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        mainStack.axis = .vertical
        mainStack.distribution = .fillEqually
        contentView.addSubview(avatarImageView)
        contentView.addSubview(mainStack)
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 80),
            avatarImageView.heightAnchor.constraint(equalToConstant: 80),
            avatarImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            mainStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: 80)
        ])
    }
}

extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
