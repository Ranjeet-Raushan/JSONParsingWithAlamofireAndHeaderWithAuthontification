//  Models.swift
//  JSONParsingWithAlamofireAndHeaderWithAuthontification
//  Created by Ranjeet Raushan on 12/11/20.
//  Copyright © 2020 Ranjeet Raushan. All rights reserved.

import Foundation
   import  UIKit  
   
   struct Result : Codable {
       let success : Bool?
       let total_count : Int?
       let message : String?
       let data : Data?
       
       enum CodingKeys: String, CodingKey {
           
           case success = "success"
           case total_count = "total_count"
           case message = "message"
           case data = "data"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           success = try values.decodeIfPresent(Bool.self, forKey: .success)
           total_count = try values.decodeIfPresent(Int.self, forKey: .total_count)
           message = try values.decodeIfPresent(String.self, forKey: .message)
           data = try values.decodeIfPresent(Data.self, forKey: .data)
       }
       
   }
   
   struct Data : Codable {
       let connections : [Connections]?
       let totalCount : Int?
       
       enum CodingKeys: String, CodingKey {
           
           case connections = "connections"
           case totalCount = "totalCount"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           connections = try values.decodeIfPresent([Connections].self, forKey: .connections)
           totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount)
       }
       
   }
   
   struct Connections : Codable {
       let connectionId : Int?
       let inviterProviderId : Int?
       let inviteeProviderId : Int?
       let status : Int?
       let createdOn : String?
       let inviterProvider : String?
       let inviteeProvider : InviteeProvider?
       
       enum CodingKeys: String, CodingKey {
           
           case connectionId = "connectionId"
           case inviterProviderId = "inviterProviderId"
           case inviteeProviderId = "inviteeProviderId"
           case status = "status"
           case createdOn = "createdOn"
           case inviterProvider = "inviterProvider"
           case inviteeProvider = "inviteeProvider"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           connectionId = try values.decodeIfPresent(Int.self, forKey: .connectionId)
           inviterProviderId = try values.decodeIfPresent(Int.self, forKey: .inviterProviderId)
           inviteeProviderId = try values.decodeIfPresent(Int.self, forKey: .inviteeProviderId)
           status = try values.decodeIfPresent(Int.self, forKey: .status)
           createdOn = try values.decodeIfPresent(String.self, forKey: .createdOn)
           inviterProvider = try values.decodeIfPresent(String.self, forKey: .inviterProvider)
           inviteeProvider = try values.decodeIfPresent(InviteeProvider.self, forKey: .inviteeProvider)
       }
       
   }
   struct InviteeProvider : Codable {
       let providerid : Int?
       let firstName : String?
       let lastName : String?
       let middleName : String?
       let photoId : String?
       let title : String?
       let degrees : [String]?
       let licensure : [String]?
       let offices : [Offices]?
       let fullName : String?
       let meetingUsername : String?
       let isOnlineNow : Bool?
       let user : User?
       
       enum CodingKeys: String, CodingKey {
           
           case providerid = "providerid"
           case firstName = "firstName"
           case lastName = "lastName"
           case middleName = "middleName"
           case photoId = "photoId"
           case title = "title"
           case degrees = "degrees"
           case licensure = "licensure"
           case offices = "offices"
           case fullName = "fullName"
           case meetingUsername = "meetingUsername"
           case isOnlineNow = "isOnlineNow"
           case user = "user"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           providerid = try values.decodeIfPresent(Int.self, forKey: .providerid)
           firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
           lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
           middleName = try values.decodeIfPresent(String.self, forKey: .middleName)
           photoId = try values.decodeIfPresent(String.self, forKey: .photoId)
           title = try values.decodeIfPresent(String.self, forKey: .title)
           degrees = try values.decodeIfPresent([String].self, forKey: .degrees)
           licensure = try values.decodeIfPresent([String].self, forKey: .licensure)
           offices = try values.decodeIfPresent([Offices].self, forKey: .offices)
           fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
           meetingUsername = try values.decodeIfPresent(String.self, forKey: .meetingUsername)
           isOnlineNow = try values.decodeIfPresent(Bool.self, forKey: .isOnlineNow)
           user = try values.decodeIfPresent(User.self, forKey: .user)
       }
       
   }
   struct Offices : Codable {
       let oid : Int?
       let pgId : Int?
       let name : String?
       let address : String?
       let address2 : String?
       let city : String?
       let stateCode : String?
       let stateID : Int?
       let zip : String?
       let website : String?
       let lat : String?
       let lng : String?
       let country : String?
       let timeZone : String?
       let ownerUserId : Int?
       let isDeleted : Int?
       let appInterval : String?
       let campaignPageUrl : String?
       let denticonOid : Int?
       let placeOfServiceId : Int?
       let phone : String?
       let email : String?
       let fullAddress : String?
       let fullAddressWithoutCountry : String?
       
       enum CodingKeys: String, CodingKey {
           
           case oid = "oid"
           case pgId = "pgId"
           case name = "name"
           case address = "address"
           case address2 = "address2"
           case city = "city"
           case stateCode = "stateCode"
           case stateID = "stateID"
           case zip = "zip"
           case website = "website"
           case lat = "lat"
           case lng = "lng"
           case country = "country"
           case timeZone = "timeZone"
           case ownerUserId = "ownerUserId"
           case isDeleted = "isDeleted"
           case appInterval = "appInterval"
           case campaignPageUrl = "campaignPageUrl"
           case denticonOid = "denticonOid"
           case placeOfServiceId = "placeOfServiceId"
           case phone = "phone"
           case email = "email"
           case fullAddress = "fullAddress"
           case fullAddressWithoutCountry = "fullAddressWithoutCountry"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           oid = try values.decodeIfPresent(Int.self, forKey: .oid)
           pgId = try values.decodeIfPresent(Int.self, forKey: .pgId)
           name = try values.decodeIfPresent(String.self, forKey: .name)
           address = try values.decodeIfPresent(String.self, forKey: .address)
           address2 = try values.decodeIfPresent(String.self, forKey: .address2)
           city = try values.decodeIfPresent(String.self, forKey: .city)
           stateCode = try values.decodeIfPresent(String.self, forKey: .stateCode)
           stateID = try values.decodeIfPresent(Int.self, forKey: .stateID)
           zip = try values.decodeIfPresent(String.self, forKey: .zip)
           website = try values.decodeIfPresent(String.self, forKey: .website)
           lat = try values.decodeIfPresent(String.self, forKey: .lat)
           lng = try values.decodeIfPresent(String.self, forKey: .lng)
           country = try values.decodeIfPresent(String.self, forKey: .country)
           timeZone = try values.decodeIfPresent(String.self, forKey: .timeZone)
           ownerUserId = try values.decodeIfPresent(Int.self, forKey: .ownerUserId)
           isDeleted = try values.decodeIfPresent(Int.self, forKey: .isDeleted)
           appInterval = try values.decodeIfPresent(String.self, forKey: .appInterval)
           campaignPageUrl = try values.decodeIfPresent(String.self, forKey: .campaignPageUrl)
           denticonOid = try values.decodeIfPresent(Int.self, forKey: .denticonOid)
           placeOfServiceId = try values.decodeIfPresent(Int.self, forKey: .placeOfServiceId)
           phone = try values.decodeIfPresent(String.self, forKey: .phone)
           email = try values.decodeIfPresent(String.self, forKey: .email)
           fullAddress = try values.decodeIfPresent(String.self, forKey: .fullAddress)
           fullAddressWithoutCountry = try values.decodeIfPresent(String.self, forKey: .fullAddressWithoutCountry)
       }
       
   }
   struct User : Codable {
       let id : Int?
       let email : String?
       let userName : String?
       let phone : String?
       let firstName : String?
       let lastName : String?
       let middleName : String?
       let createdOn : String?
       let pgid : Int?
       let roles : String?
       let userSubscription : String?
       let password : String?
       let dateOfBirth : String?
       let envType : Int?
       let deviceId : String?
       let osType : String?
       let employer : String?
       let address1 : String?
       let address2 : String?
       let country : String?
       let state : String?
       let city : String?
       let zip : String?
       let fullName : String?
       
       enum CodingKeys: String, CodingKey {
           
           case id = "id"
           case email = "email"
           case userName = "userName"
           case phone = "phone"
           case firstName = "firstName"
           case lastName = "lastName"
           case middleName = "middleName"
           case createdOn = "createdOn"
           case pgid = "pgid"
           case roles = "roles"
           case userSubscription = "userSubscription"
           case password = "password"
           case dateOfBirth = "dateOfBirth"
           case envType = "envType"
           case deviceId = "deviceId"
           case osType = "osType"
           case employer = "employer"
           case address1 = "address1"
           case address2 = "address2"
           case country = "country"
           case state = "state"
           case city = "city"
           case zip = "zip"
           case fullName = "fullName"
       }
       
       init(from decoder: Decoder) throws {
           let values = try decoder.container(keyedBy: CodingKeys.self)
           id = try values.decodeIfPresent(Int.self, forKey: .id)
           email = try values.decodeIfPresent(String.self, forKey: .email)
           userName = try values.decodeIfPresent(String.self, forKey: .userName)
           phone = try values.decodeIfPresent(String.self, forKey: .phone)
           firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
           lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
           middleName = try values.decodeIfPresent(String.self, forKey: .middleName)
           createdOn = try values.decodeIfPresent(String.self, forKey: .createdOn)
           pgid = try values.decodeIfPresent(Int.self, forKey: .pgid)
           roles = try values.decodeIfPresent(String.self, forKey: .roles)
           userSubscription = try values.decodeIfPresent(String.self, forKey: .userSubscription)
           password = try values.decodeIfPresent(String.self, forKey: .password)
           dateOfBirth = try values.decodeIfPresent(String.self, forKey: .dateOfBirth)
           envType = try values.decodeIfPresent(Int.self, forKey: .envType)
           deviceId = try values.decodeIfPresent(String.self, forKey: .deviceId)
           osType = try values.decodeIfPresent(String.self, forKey: .osType)
           employer = try values.decodeIfPresent(String.self, forKey: .employer)
           address1 = try values.decodeIfPresent(String.self, forKey: .address1)
           address2 = try values.decodeIfPresent(String.self, forKey: .address2)
           country = try values.decodeIfPresent(String.self, forKey: .country)
           state = try values.decodeIfPresent(String.self, forKey: .state)
           city = try values.decodeIfPresent(String.self, forKey: .city)
           zip = try values.decodeIfPresent(String.self, forKey: .zip)
           fullName = try values.decodeIfPresent(String.self, forKey: .fullName)
       }
       
   }
   
