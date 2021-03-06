// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: finder.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Coffeefinder_Point {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var lat: Double = 0

  var lng: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Coffeefinder_CoffeeShop {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  var rating: Float {
    get {return _storage._rating}
    set {_uniqueStorage()._rating = newValue}
  }

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  var iconURL: String {
    get {return _storage._iconURL}
    set {_uniqueStorage()._iconURL = newValue}
  }

  var address: String {
    get {return _storage._address}
    set {_uniqueStorage()._address = newValue}
  }

  var location: Coffeefinder_Point {
    get {return _storage._location ?? Coffeefinder_Point()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  mutating func clearLocation() {_uniqueStorage()._location = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "coffeefinder"

extension Coffeefinder_Point: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Point"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "lat"),
    2: .same(proto: "lng"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.lat)
      case 2: try decoder.decodeSingularDoubleField(value: &self.lng)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.lat != 0 {
      try visitor.visitSingularDoubleField(value: self.lat, fieldNumber: 1)
    }
    if self.lng != 0 {
      try visitor.visitSingularDoubleField(value: self.lng, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Coffeefinder_Point, rhs: Coffeefinder_Point) -> Bool {
    if lhs.lat != rhs.lat {return false}
    if lhs.lng != rhs.lng {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Coffeefinder_CoffeeShop: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CoffeeShop"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "rating"),
    3: .same(proto: "name"),
    4: .standard(proto: "icon_url"),
    5: .same(proto: "address"),
    6: .same(proto: "location"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _rating: Float = 0
    var _name: String = String()
    var _iconURL: String = String()
    var _address: String = String()
    var _location: Coffeefinder_Point? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _rating = source._rating
      _name = source._name
      _iconURL = source._iconURL
      _address = source._address
      _location = source._location
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularFloatField(value: &_storage._rating)
        case 3: try decoder.decodeSingularStringField(value: &_storage._name)
        case 4: try decoder.decodeSingularStringField(value: &_storage._iconURL)
        case 5: try decoder.decodeSingularStringField(value: &_storage._address)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._location)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if _storage._rating != 0 {
        try visitor.visitSingularFloatField(value: _storage._rating, fieldNumber: 2)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 3)
      }
      if !_storage._iconURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._iconURL, fieldNumber: 4)
      }
      if !_storage._address.isEmpty {
        try visitor.visitSingularStringField(value: _storage._address, fieldNumber: 5)
      }
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Coffeefinder_CoffeeShop, rhs: Coffeefinder_CoffeeShop) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._rating != rhs_storage._rating {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._iconURL != rhs_storage._iconURL {return false}
        if _storage._address != rhs_storage._address {return false}
        if _storage._location != rhs_storage._location {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
