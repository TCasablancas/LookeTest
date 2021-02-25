//
//  ScreenSize.swift
//  LookeTest
//
//  Created by Thyago on 25/02/21.
//

import UIKit

class ScreenSize: UIViewController {
    
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
        title = "06. Screen Size"
    }
}

extension ScreenSize {
    func setupAnswer() {
        textBox.title.text = "Quais práticas podem ser aplicadas para um aplicativo iOS se adaptar a qualquer tamanho de tela e orientação."
        textBox.answer.text = "Existem várias práticas, desde a utilização de frameworks (somente para ajudar no UI) como o SnapKit, desde a utilização de constraints, para quem não utiliza o ViewCode.\n\nQueries específicar também pode ser utilzadas - dependendo da necessidade - além de ter bastante atenção ao AutoLayout, independende da modalidade que se use."
    }
}

extension ScreenSize: ViewCode {
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
