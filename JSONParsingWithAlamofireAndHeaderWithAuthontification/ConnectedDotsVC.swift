//  ConnectedDotsVC.swift
//  JSONParsingWithAlamofireAndHeaderWithAuthontification
//  Created by Ranjeet Raushan on 12/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import UIKit
import  Alamofire
import SwiftyJSON
import  Foundation
enum Endpoints{
    static let myNetworking = "https://qa2.teledentix.com/api/networks/connections?itemPerPage=5&currentPageNum=1&needDetails=true"
}
class ConnectedDotsVC: UIViewController {
    @IBOutlet weak var connectionTableView: UITableView!
    var jsondict = JSON()
    var imageArray = ["febd","foodDelivery","goodys","kotipizza","mcdonalds"]
    var nameArray = ["Vaishali Tester","Laura Stanford","Ujjal Dhar", "John Michel" , "Michelle Brower"]
    let titleArray = ["MDS - Oral & Maxillofacial Surgery Endodontics","MDS - General Surgeon Hygiene","MDS - Oral & Maxillofacial Surgery BHMS BAHMS","RDA","DDS"]
    var officeArray = ["think","GentalDental","VirtualDentalCareX","Virtual","Aetna Health"]
    var addreeseArray = ["1111 Virtual Ave, Huntington Beach, CA, 92647, US", "Amador City, CA, 95601, US","Fermont California" ,"Florida","California"]
    override func viewDidLoad() {
       
        super.viewDidLoad()
        navigationItem.title = "My Network"
        navigationController?.navigationBar.barTintColor = UIColor.blue
        let endPoint = Endpoints.myNetworking
        hitServer(params: [:], endPoint:endPoint , action: "myNetworks", httpMethod: .get)
        
    }
}

extension ConnectedDotsVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConnectionCell", for: indexPath) as! ConnectionCell
        cell.img_connections.image =  UIImage(named: imageArray[indexPath.row] + ".png")
        cell.lbl_name.text = nameArray[indexPath.row]
        cell.lbl_designation.text = titleArray[indexPath.row]
        cell.lbl_company.text = officeArray[indexPath.row]
        cell.lbl_addresse.text = addreeseArray[indexPath.row]
        return cell
        
    }
}

extension ConnectedDotsVC {
private func hitServer(params: [String:Any],endPoint: String, action: String,httpMethod: HTTPMethod) {
    Service.shared.hitService(withBodyData: params, toEndPoint: endPoint, using: httpMethod, dueToAction: action){ result in
        switch result {
        case let .success(json,_):
            let msg = json["message"].stringValue
            if json["error"].intValue == 1 {
            print("msg:\(msg)")
            }
            else {
                }
            break
        case .failure(let error):
            print("MyError = \(error)")
            break
        }
     }
  }
}

