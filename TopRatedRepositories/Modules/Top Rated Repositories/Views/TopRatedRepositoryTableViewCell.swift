//
//  TopRatedRepositoryTableViewCell.swift
//  TopRatedRepositories
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

import UIKit
import SDWebImage


class TopRatedRepositoryTableViewCell: UITableViewCell, ReusableView {

    private lazy var containerView : UIStackView = {
        let view = UIStackView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8
        return view
    }()
    
    private lazy var nameRepositoryLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .black
        label.sizeToFit()
       return label
    }()
    
    private lazy var ownerNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .gray
        label.sizeToFit()
        return label
    }()
    
    private lazy var starsRepositoryLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .thin)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .darkGray
        label.sizeToFit()
        return label
    }()
    
    private lazy var ownerPhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 5
        image.layer.masksToBounds = true
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViewsHierarchy()
        configureViewsConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        ownerNameLabel.text = ""
        starsRepositoryLabel.text = ""
        starsRepositoryLabel.text = "0 stars"
        ownerPhoto.image = nil
    }
    
    func configure(name: String, stars: String, ownerName: String, ownerImageURL: URL) {
        configureViewsHierarchy()
        configureViewsConstraints()
        
        nameRepositoryLabel.text = name
        starsRepositoryLabel.text = stars + " stars"
        ownerNameLabel.text = ownerName
        ownerPhoto.sd_setImage(with: ownerImageURL, placeholderImage: #imageLiteral(resourceName: "userLogo"))
    }
}

extension TopRatedRepositoryTableViewCell: ConfigureViewsLayoutProtocol {
    func configureViewsHierarchy() {
        addSubview(ownerPhoto)
        addSubview(containerView)
        containerView.addArrangedSubview(nameRepositoryLabel)
        containerView.addArrangedSubview(ownerNameLabel)
        containerView.addArrangedSubview(starsRepositoryLabel)
    }
    
    func configureViewsConstraints() {
        configureOwnerPhotoLabelConstraints()
        configureContainerViewConstraints()
    }
    
    func configureOwnerPhotoLabelConstraints() {
        ownerPhoto.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        ownerPhoto.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        ownerPhoto.widthAnchor.constraint(equalToConstant: 60).isActive = true
        ownerPhoto.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func configureContainerViewConstraints() {
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        containerView.leftAnchor.constraint(equalTo: ownerPhoto.rightAnchor, constant: 16).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16).isActive = true
    }
}
