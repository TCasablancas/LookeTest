//
//  TextBox.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import UIKit
import SnapKit

public class TextBox: UIView {
    
    private lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleContainer, answer])
        stack.layer.cornerRadius = 4
        stack.backgroundColor = .white
        return stack
    }()
    
    private lazy var titleContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    public lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .white
        return label
    }()
    
    public lazy var answer: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TextBox: ViewCode {
    func viewHierarchy() {
        self.addSubview(container)
        container.addSubview(stackView)
        titleContainer.addSubview(title)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalToSuperview()
        }
        
        stackView.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(20)
            $0.right.bottom.equalToSuperview().offset(-20)
        }
        
        titleContainer.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        title.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(10)
            $0.right.bottom.equalToSuperview().offset(-10)
        }
        
        answer.snp.makeConstraints {
            $0.top.equalTo(titleContainer.snp.bottom).offset(10)
            $0.left.equalToSuperview().offset(10)
            $0.right.bottom.equalToSuperview().offset(-10)
        }
    }
}
