//
//  SimplyListCaller.swift
//  LookeTest
//
//  Created by Thyago on 23/02/21.
//

import UIKit
import SnapKit
import Alamofire
import ObjectMapper

class SimplyListCaller: UIViewController {
    
    private lazy var container: UIView = {
        let view = UIView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        getData()
        self.view.backgroundColor = .white
    }
}

// MARK: - Work as Presenter

extension SimplyListCaller {
    
}


// MARK: - Work as Interactor

extension SimplyListCaller {
    func getData() {
        getToppingList() { (response) in
            switch response {
            case .success(let model):
                print(model.id)
            case .serverError(let error):
                let errorData = "\(error.statusCode), -, \(error.msgError)"
                print(errorData)
            case .timeOut(let description):
                print("Server error noConnection: \(description) \n")
            case .noConnection(let description):
                print("Server error timeOut: \(description) \n")
            }
        }
    }
}

// MARK: - Work as Worker

extension SimplyListCaller {
    func getToppingList(completion: @escaping (_ response: Response<Topping>) -> Void) {
        
        let url = "https://sampletestingproject-4a8fc.web.app/teste.json"
        
        Alamofire.request(url).responseJSON { (data: DataResponse<Any>) in
            let statusCode = data.response?.statusCode
            
            switch data.result {
            case .success(let value):
                guard let resultValue = value as? [String:Any] else { return }
                                
                if statusCode == 200 {
                    let model = Mapper<Topping>().map(JSON: resultValue)
                    completion(.success(model: model!))
                }
            case .failure(let error):
                let errorCode = error._code
                if errorCode == -1009 {
                    let erro = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    completion(.noConnection(description: erro))
                } else if errorCode == -1001 {
                    let erro = ServerError(msgError: error.localizedDescription, statusCode: errorCode)
                    completion(.timeOut(description: erro))
                }
            }
        }
    }
}

extension SimplyListCaller: ViewCode {
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
