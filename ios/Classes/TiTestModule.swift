//
//  TiTestModule.swift
//  ti.test
//
//  Created by Hans Knoechel
//  Copyright (c) 2018 Your Company. All rights reserved.
//

import UIKit
import TitaniumKit

/**
 
 Titanium Swift Module Requirements
 ---
 
 1. Use the @objc annotation to expose your class to Objective-C (used by the Titanium core)
 2. Use the @objc annotation to expose your method to Objective-C as well.
 3. Method arguments always have the "[Any]" type, specifying a various number of arguments.
 Unwrap them like you would do in Swift, e.g. "guard let arguments = arguments, let message = arguments.first"
 4. You can use any public Titanium API like before, e.g. TiUtils. Remember the type safety of Swift, like Int vs Int32
 and NSString vs. String.
 
 */

@objc(TiTestModule)
class TiTestModule: TiModule {

  public let testProperty: String = "Hello World"
  
  func moduleGUID() -> String {
    return "fc6e6a45-71e7-40a0-9d54-4d8c65e16b91"
  }
  
  override func moduleId() -> String! {
    return "ti.test"
  }

  override func startup() {
    super.startup()
    debugPrint("[DEBUG] \(self) loaded")
  }
  
  @objc(test:)
  func test(params: Array<Any>?) {
    print(params!)
    NSLog("%@", params!)
  }
}
