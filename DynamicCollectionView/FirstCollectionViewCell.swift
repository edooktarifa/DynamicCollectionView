//
//  FirstCollectionViewCell.swift
//  DynamicCollectionView
//
//  Created by Phincon on 23/02/24.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    
    lazy var collectionImage: UIImageView = {
       let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "hiking")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    static let identifier = "FirstCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func configView(){
        contentView.addSubview(collectionImage)
    }
    
    func setupConstraint(){
        collectionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        collectionImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        collectionImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
