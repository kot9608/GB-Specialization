//
//  FriendViewControllerTests.swift
//  GB.CreateApp.Homework1Tests
//
//  Created by MacOSX on 26.03.2024.
//

import XCTest
@testable import GB_CreateApp_Homework1

class FriendViewControllerTests: XCTestCase {
    
    private var friendViewController : FriendViewController!
    private var fileCacheSpy: FileCacheSpy!
    private var networkServiceSpy: NetworkServiceSpy!
    
    override func setUp() {
        super.setUp()
        fileCacheSpy = FileCacheSpy()
        networkServiceSpy = NetworkServiceSpy()
        friendViewController = FriendViewController(networkService: networkServiceSpy, fileCache: fileCacheSpy)
        
    }
    
    override  func tearDown() {
        friendViewController = nil
        fileCacheSpy = nil
        networkServiceSpy = nil
        super.tearDown()
    }
    
    func testGetFrinds(){
        friendViewController.getFriends()
        
        XCTAssertTrue(networkServiceSpy.isgetFriends, "GetFriend - NOT CALLED")

    }
    
}
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


