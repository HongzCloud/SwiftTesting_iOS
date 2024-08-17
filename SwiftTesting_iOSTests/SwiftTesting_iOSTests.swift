//
//  SwiftTesting_iOSTests.swift
//  SwiftTesting_iOSTests
//
//  Created by 오킹 on 8/5/24.
//

import Testing
@testable import SwiftTesting_iOS

struct SwiftTesting_iOSTests {

    let viewModel = ViewModel()
    
    @Test("Check test function") func example() async throws {
        
        #expect(viewModel.numberThree() == 3)
    }

    @Test("Check test function 2") func example2() {
        
        try? #require(viewModel.numberThree() == 2)
        // require에서 실패하여 아래 코드는 실행 안됨
        #expect(viewModel.numberThree() == 3)
    }
}
