//
//  ViewController.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - UIElements
    
    private lazy var background: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .clear
        return table
    }()
    
    var arrayElements: [String] = [
        "Toppings Exhibition",
        "Algorithm",
        "Rotation Slider",
        "Vehicle Assortment",
        "Pattern Explanation"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        self.navigationController?.navigationBar.barTintColor = .black
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        title = "SELF"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayElements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arrayElements[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = SimplyListCaller()
            self.present(vc, animated: true, completion: nil)
        case 1:
            let vc = AlgorithmOutput()
            self.present(vc, animated: true, completion: nil)
        case 2:
            let vc = RotationSlider()
            self.present(vc, animated: true, completion: nil)
        case 3:
            let vc = VehicleAssortment()
            self.present(vc, animated: true, completion: nil)
        case 4:
            let vc = PatternsExplanation()
            self.present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
}

extension ViewController: ViewCode {
    func viewHierarchy() {
        self.view.addSubview(background)
        background.addSubview(container)
        container.addSubview(tableView)
    }
    
    func setupConstraints() {
        background.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.height.equalToSuperview()
        }
        
        container.snp.makeConstraints {
            $0.width.equalToSuperview()
            $0.top.equalToSuperview().offset(50)
            $0.bottom.equalToSuperview().offset(-40)
        }
        
        tableView.snp.makeConstraints {
            $0.height.equalToSuperview()
            $0.width.equalToSuperview()
        }
    }
}
