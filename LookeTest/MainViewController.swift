//
//  MainViewController.swift
//  LookeTest
//
//  Created by Thyago on 24/02/21.
//

import UIKit

private let reuseIdentifier = "TopperCollectionViewCell"

class MainViewController: UICollectionViewController {
    
    
    
    var arrayElements: [String] = [
        "01. Toppings Exhibition",
        "02. Algorithm",
        "03. Rotation Slider",
        "04. Vehicle Assortment",
        "05. Pattern Explanation",
        "06. Screen Size",
        "07. Outlet Definition",
        "08. KVO and Notification Center",
        "09. AppID and BundleID",
        "10. Add Framework",
        "11. "
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        setupNavigationBar()
        self.view.backgroundColor = .white
    }

    init() {
        let flow = UICollectionViewFlowLayout()
        flow.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        flow.scrollDirection = .vertical
        flow.minimumLineSpacing = 0
        flow.minimumInteritemSpacing = 0
        
        super.init(collectionViewLayout: flow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCollectionView() {
        collectionView.register(TopperCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)
    }
    
    private func setFlow() {
        let flow = UICollectionViewFlowLayout()
        flow.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        flow.scrollDirection = .vertical
        flow.minimumLineSpacing = 0
        flow.minimumInteritemSpacing = 0
        
    }
    
    private func setupNavigationBar() {
        let navigation = self.navigationController?.navigationBar
        navigation?.prefersLargeTitles = true
        navigation?.shadowImage = UIImage()
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.red]
        navigation?.titleTextAttributes = textAttributes
        
        title = "Teste Looke"
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 60)
    }
}

extension MainViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayElements.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! TopperCollectionViewCell
        
        let item = arrayElements[indexPath.row]
        cell.title.text = item
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let vc = SimplyListCaller()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = AlgorithmOutput()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = RotationSlider()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = VehicleAssortment()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = PatternsExplanation()
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = ScreenSize()
            self.navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = OutletDefinition()
            self.navigationController?.pushViewController(vc, animated: true)
        case 7:
            let vc = NotificationCenter()
            self.navigationController?.pushViewController(vc, animated: true)
        case 8:
            let vc = BundleId()
            self.navigationController?.pushViewController(vc, animated: true)
        case 9:
            let vc = AddFramework()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}
