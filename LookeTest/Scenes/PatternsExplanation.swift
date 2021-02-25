//
//  PatternsExplanation.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

import UIKit
import SnapKit

class PatternsExplanation: UIViewController {
    
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
    }
}

extension PatternsExplanation {
    func setupAnswer() {
        textBox.title.text = "Explique os patterns MVVM e MVC, escolha um deles e de um exemplo de utilização prática no desenvolvimento de aplicativos para iOS."
        textBox.answer.text = ""
    }
}

extension PatternsExplanation: ViewCode {
    func viewHierarchy() {
        self.view.addSubview(container)
    }
    
    func setupConstraints() {
        container.snp.makeConstraints {
            $0.left.equalToSuperview().offset(20)
            $0.right.equalToSuperview().offset(-20)
            $0.top.equalToSuperview().offset(50)
            $0.bottom.equalToSuperview().offset(-40)
        }
    }
}
