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
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleContainer, answerContainer])
        stack.layer.cornerRadius = 4
        stack.backgroundColor = .white
        stack.layer.shadowColor = UIColor.gray.cgColor
        stack.layer.shadowOpacity = 0.3
        stack.layer.shadowOffset = .zero
        stack.layer.shadowRadius = 10
        stack.axis = .vertical
        return stack
    }()
    
    private lazy var titleContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "#1B78FA")
        view.layer.cornerRadius = 4
        return view
    }()
    
    private lazy var answerContainer: UIView = {
        let view = UIView()
        return view
    }()
    
    public lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    public lazy var answer: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Lorem ipsum dolor sit amet"
        label.numberOfLines = 0
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
        answerContainer.addSubview(answer)
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
            $0.height.equalTo(100)
        }
        
        answerContainer.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalTo(titleContainer.snp.bottom)
            $0.bottom.equalToSuperview()
        }
        
        title.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
            $0.bottom.equalToSuperview().offset(-20)
        }
        
        answer.snp.makeConstraints {
            $0.top.equalToSuperview().offset(30)
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
        }
    }
}
