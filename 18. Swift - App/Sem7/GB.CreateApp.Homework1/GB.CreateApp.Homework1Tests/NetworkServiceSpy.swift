//
//  FriendsViewControllerTests.swift
//  GB.CreateApp.Homework1Tests
//
//  Created by MacOSX on 26.03.2024.
//

import XCTest
@testable import GB_CreateApp_Homework1

final class NetworkServiceSpy: MyProtocol {
    
    private (set) var isgetFriends = false
    private (set) var isgetGroups = false
    private (set) var isgetPhotos = false
    private (set) var isgetProfileInfo = false
    
    
    
    func getFriends(completion: @escaping (Result<[Friend], Error>) -> Void) {
        isgetFriends = true
    }
    
    func getGroups(completion: @escaping (Result<[Group], Error>) -> Void) {
        isgetGroups = true
    }
    
    func getPhotos(completion: @escaping ([Photo]) -> Void) {
        isgetPhotos = true
    }
    
    func getProfileInfo(completion: @escaping (User?) -> Void) {
        isgetProfileInfo = true
    }
    
    
    

}



//class FriendsViewControllerTests: XCTestCase {
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
//}
