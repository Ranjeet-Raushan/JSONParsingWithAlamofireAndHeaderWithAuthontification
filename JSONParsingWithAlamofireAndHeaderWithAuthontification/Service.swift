//  Service.swift
//  JSONParsingWithAlamofireAndHeaderWithAuthontification
//  Created by Ranjeet Raushan on 12/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation
import SwiftyJSON
import Alamofire


enum ExpectedResult {
    case success(JSON,String)
    case failure(Error)
}
final class Service {
    static let shared = Service()
    private init() {
        // private
    }
    
    func hitService(withBodyData data: [String: Any],toEndPoint url: String,using httpMethod: HTTPMethod,dueToAction requestType: String,completion: @escaping (ExpectedResult) -> Void){
        print("EndPoint = \(url)"); print("BodyData = \(data)");print("Action = \(requestType)")
        let accessToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiI0N2I3MjRhZi0zZDhmLTQyZWYtOGE5Ni05ZGQyZTU3N2U4MWUiLCJzdWIiOiJicmFqZW5kcmEudGhpbmtAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ImJyYWplbmRyYS50aGlua0BnbWFpbC5jb20iLCJ1c2VyaWQiOiJicmFqZW5kcmEudGhpbmtAZ21haWwuY29tIiwicGdpZCI6IjEiLCJ1aWQiOiI1NjMzIiwiZXhwIjoxNjA1MTA5MDU5LCJpc3MiOiJodHRwczovL3FhMi50ZWxlZGVudGl4LmNvbSIsImF1ZCI6Imh0dHBzOi8vcWEyLnRlbGVkZW50aXguY29tIn0.jPDsKLAOqeeA6Ya0aJkm-G9QnP-e-jh85yx_JOF7Efs"
        let header = ["Authorization":"Bearer \(accessToken)"]
        Alamofire.request(url, method: httpMethod, parameters: data.isEmpty ? nil: data, encoding: JSONEncoding.default, headers: header).responseJSON { response in
            switch(response.result) {
            case .success(let value):
                print("Response = \(value)")
                completion(ExpectedResult.success(JSON(value),requestType))
                break
            case .failure(let error):
                print("Failure : \(response.result.error!)")
                print("let error : \(error.localizedDescription)")
                completion(ExpectedResult.failure(error))
                break
            }
        }
    }
}
