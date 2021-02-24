//
//  TopperCollectionViewCell.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import UIKit
import SnapKit

class TopperCollectionViewCell: UICollectionViewCell {
    
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TopperCollectionViewCell: ViewCode {
    func viewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
}
