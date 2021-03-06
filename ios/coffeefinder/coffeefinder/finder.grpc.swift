//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: finder.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol Coffeefinder_CoffeeServiceCoffeeShopsCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> Coffeefinder_CoffeeShop?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<Coffeefinder_CoffeeShop?>) -> Void) throws
}

internal extension Coffeefinder_CoffeeServiceCoffeeShopsCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> Coffeefinder_CoffeeShop? { return try self._receive(timeout: timeout) }
}

fileprivate final class Coffeefinder_CoffeeServiceCoffeeShopsCallBase: ClientCallServerStreamingBase<Coffeefinder_Point, Coffeefinder_CoffeeShop>, Coffeefinder_CoffeeServiceCoffeeShopsCall {
  override class var method: String { return "/coffeefinder.CoffeeService/CoffeeShops" }
}


/// Instantiate Coffeefinder_CoffeeServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Coffeefinder_CoffeeServiceService: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func coffeeShops(_ request: Coffeefinder_Point, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> Coffeefinder_CoffeeServiceCoffeeShopsCall

}

internal extension Coffeefinder_CoffeeServiceService {
  /// Asynchronous. Server-streaming.
  func coffeeShops(_ request: Coffeefinder_Point, completion: ((CallResult) -> Void)?) throws -> Coffeefinder_CoffeeServiceCoffeeShopsCall {
    return try self.coffeeShops(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Coffeefinder_CoffeeServiceServiceClient: ServiceClientBase, Coffeefinder_CoffeeServiceService {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func coffeeShops(_ request: Coffeefinder_Point, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> Coffeefinder_CoffeeServiceCoffeeShopsCall {
    return try Coffeefinder_CoffeeServiceCoffeeShopsCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

