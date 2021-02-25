//
//  TopperCollectionViewCell.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import UIKit
import SnapKit

class TopperCollectionViewCell: UICollectionViewCell {
    
    private lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#1B78FA")
        view.layer.cornerRadius = 4
        return view
    }()
    
    public lazy var title: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
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
        self.addSubview(container)
        container.addSubview(title)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.top.equalToSuperview().offset(5)
            $0.bottom.equalToSuperview().offset(-5)
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
        }
        
        title.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(10)
            $0.right.bottom.equalToSuperview().offset(-10)
        }
    }
}
