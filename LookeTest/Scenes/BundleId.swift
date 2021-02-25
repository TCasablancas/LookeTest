//
//  BundleId.swift
//  LookeTest
//
//  Created by Thyago on 25/02/21.
//

import UIKit

class BundleId: UIViewController {
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var textBox: TextBox = {
        let view = TextBox()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupAnswer()
        self.view.backgroundColor = .white
        title = "09. BundleID"
    }
}

extension BundleId {
    func setupAnswer() {
        textBox.title.text = "O que é “app ID” e “Bundle ID”?"
        textBox.answer.text = "O appID é junção do TeamID e do BundleID de uma aplicação, quase a concatenação de um Token. Já o Bundle simplesmente é um identificador da aplicação junto a Applem, para que a aplicação não se repita no ecossistem."
    }
}

extension BundleId: ViewCode {
    func viewHierarchy() {
        self.view.addSubview(container)
        container.addSubview(textBox)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
            $0.top.equalTo(130)
            $0.bottom.equalToSuperview()
        }
        
        textBox.snp.makeConstraints{
            $0.width.equalToSuperview()
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-30)
        }
    }
}
