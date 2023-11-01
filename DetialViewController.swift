//
//  DetialViewController.swift
//  AppThree
//
//  Created by Арсений on 10/29/23.
//

import UIKit

class DetialViewController: UIViewController {
    
    private lazy var avatarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    init(with phone: Phone) {
        super.init(nibName: nil, bundle: nil)
        
        avatarImage.image = phone.image
        nameLabel.text = phone.model
        ageLabel.text = String(phone.year)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(avatarImage)
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.backgroundColor = .white
        detailSetup()
    }
    
    func detailSetup() {
        let detailMainStack = UIStackView(arrangedSubviews: [avatarImage, nameLabel, ageLabel])
        detailMainStack.axis = .vertical
        detailMainStack.distribution = .fillEqually
        view.addSubview(detailMainStack)
                
        NSLayoutConstraint.activate([
            detailMainStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            detailMainStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            detailMainStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            detailMainStack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}
