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
        title = "05. Pattern Explanation"
    }
}

extension PatternsExplanation {
    func setupAnswer() {
        textBox.title.text = "Explique os patterns MVVM e MVC, escolha um deles e de um exemplo de utilização prática no desenvolvimento de aplicativos para iOS."
        textBox.answer.text = "No modelo MVC existe uma comunicação retilinea entre as camadas, o que é quebrado no MVVM, onde a ViewModel pode se comunicar com a camada View ou Model, ou ter a mesma responsabilidade em trafegar informações entre estas.\n\nPor preferência trabalho com o VIPER, mas escolheria MVVM já que a quebra de responsabilidades torna melhor a usabilidade de codigo e o legado fica mais simples de ser tratado em caso de bugs.\n\nUm app de transações bancárias é um bom exemplo para o MVVM, já que são muitas responsabilidades e consumo/numero de dados a serem mostrados é alto."
    }
}

extension PatternsExplanation: ViewCode {
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
