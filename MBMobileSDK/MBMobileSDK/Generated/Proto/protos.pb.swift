// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: protos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Proto_SubscriptionErrorType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknown // = 0
  case invalidJwt // = 1
  case UNRECOGNIZED(Int)

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .invalidJwt
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .invalidJwt: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Proto_SubscriptionErrorType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Proto_SubscriptionErrorType] = [
    .unknown,
    .invalidJwt,
  ]
}

#endif  // swift(>=4.2)

enum Proto_OperatingSystemName: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknownOperatingSystem // = 0
  case ios // = 1
  case android // = 2
  case intTest // = 3
  case manualTest // = 4
  case web // = 5
  case UNRECOGNIZED(Int)

  init() {
    self = .unknownOperatingSystem
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownOperatingSystem
    case 1: self = .ios
    case 2: self = .android
    case 3: self = .intTest
    case 4: self = .manualTest
    case 5: self = .web
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknownOperatingSystem: return 0
    case .ios: return 1
    case .android: return 2
    case .intTest: return 3
    case .manualTest: return 4
    case .web: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Proto_OperatingSystemName: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Proto_OperatingSystemName] = [
    .unknownOperatingSystem,
    .ios,
    .android,
    .intTest,
    .manualTest,
    .web,
  ]
}

#endif  // swift(>=4.2)

/// SubscriptionRequest is sent to an actor to indicate that the sender wants to subscribe
/// to events of specific topics. By convention the "Sender" property of the actor message is the
/// Subscriber and will receive the events.
struct Proto_SubscribeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// An array of topics for which the Subscriber wants to be notified from the Receiver of this message
  var topics: [String] = []

  /// indicates whether the previous set of topics should be replaced or whether the content of
  /// topics should be merged into the already existing set of topics in the publisher actor. E.g. You're already
  /// subscribed to topics A and B. If you send a SubscribeRequest with B and C:
  /// replace = true -> you are subscribed to B and C
  /// replace = false -> you are subscribed to A, B and C
  var replace: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// SubscribeResponse is returned by the actor which received a SubscribeRequest. In case of a successful subscription
/// success will be true and error_codes empty/nil. In case of an error the errors map will contain
/// information that points to the reason for failure. The error map's keys are topics that have resulted in an error.
/// The message also contains all successfully subscribed topics under the `subscribed_topics` key.
/// By convention if an SubscribeRequest is sent for topics that have already been subscribed to, the SubscribeResponse
/// will be successful and no error will be returned.
struct Proto_SubscribeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var success: Bool = false

  var errors: Dictionary<String,Proto_SubscriptionError> = [:]

  var subscribedTopics: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// UnsubscribeRequest is sent to an actor to indicate that the sender wants to unsubscribe
/// from events specified by the topics array.
struct Proto_UnsubscribeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// An array of topics for which the Subscriber does not want to receive any more messages
  var topics: [String] = []

  /// Whether the publisher should respond
  var anticipateResponse: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// UnsubscribeResponse is returned by the actor which received a UnsubscribeRequest. In case of a successful removal,
/// success will be true and error_codes empty/nil. In case of an error the errors map will contain
/// information that points to the reason for failure. The error map's keys are topics that have resulted in an error.
/// The message also contains all successfully subscribed topics under the `unsubscribed_topics` key.
/// By convention if an UnsubscribeRequest is sent for topics that have already been unsubscribed from the UnsubscribeResponse
/// will be successful and no error will be returned.
struct Proto_UnsubscribeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var success: Bool = false

  var errors: Dictionary<String,Proto_SubscriptionError> = [:]

  var unsubscribedTopics: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_SubscriptionError {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var code: [Proto_SubscriptionErrorType] = []

  /// Optional
  var message: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Sent from Websocket-Service -> AppTwin
struct Proto_SubscribeToAppTwinRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sessionID: String = String()

  var ciamID: String = String()

  /// additional data
  var deviceLocale: String = String()

  var appID: String = String()

  var appVersion: String = String()

  var osName: Proto_OperatingSystemName = .unknownOperatingSystem

  var osVersion: String = String()

  var deviceModel: String = String()

  var networkCarrier: String = String()

  var sdkVersion: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_ResubscribeToAppTwinRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sessionID: String = String()

  var ciamID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_ResubscribeToAppTwinResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: Proto_ResubscribeToAppTwinResponse.ResubscribeResult = .unknownError

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum ResubscribeResult: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unknownError // = 0
    case success // = 1
    case invalidJwtError // = 2
    case targetDoesNotExist // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .unknownError
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknownError
      case 1: self = .success
      case 2: self = .invalidJwtError
      case 3: self = .targetDoesNotExist
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unknownError: return 0
      case .success: return 1
      case .invalidJwtError: return 2
      case .targetDoesNotExist: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension Proto_ResubscribeToAppTwinResponse.ResubscribeResult: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Proto_ResubscribeToAppTwinResponse.ResubscribeResult] = [
    .unknownError,
    .success,
    .invalidJwtError,
    .targetDoesNotExist,
  ]
}

#endif  // swift(>=4.2)

/// Sent from AppTwin -> Websocket-Service
struct Proto_SubscribeToAppTwinResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var success: Bool = false

  var errorCode: Proto_SubscriptionErrorType = .unknown

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_UnsubscribeFromAppTwinRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sessionID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_UnsubscribeFromAppTwinResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var success: Bool = false

  var errors: Dictionary<String,Proto_SubscriptionError> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_Heartbeat {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// This message is used to tell the App which vehicles are assigned to the current user.
/// The message is sent when the AppTwin is fully initialized (i.e. when it received the first vcb-response)
///
/// The list of VINs is needed when a user gets unassigned from a vehicle while not connected to an AppTwin
/// In this case the vehicle would still show in the app the next time the user starts it (see https://appsfactory.atlassian.net/browse/DAIM-3831)
/// To prevent this, we tell the App which VINs are assigned via this message
struct Proto_AssignedVehicles {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var vins: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Proto_AcknowledgeAssignedVehicles {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_SubscriptionErrorType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "INVALID_JWT"),
  ]
}

extension Proto_OperatingSystemName: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_OPERATING_SYSTEM"),
    1: .same(proto: "IOS"),
    2: .same(proto: "ANDROID"),
    3: .same(proto: "INT_TEST"),
    4: .same(proto: "MANUAL_TEST"),
    5: .same(proto: "WEB"),
  ]
}

extension Proto_SubscribeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "topics"),
    2: .same(proto: "replace"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.topics) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.replace) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.topics.isEmpty {
      try visitor.visitRepeatedStringField(value: self.topics, fieldNumber: 1)
    }
    if self.replace != false {
      try visitor.visitSingularBoolField(value: self.replace, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_SubscribeRequest, rhs: Proto_SubscribeRequest) -> Bool {
    if lhs.topics != rhs.topics {return false}
    if lhs.replace != rhs.replace {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_SubscribeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .same(proto: "errors"),
    3: .standard(proto: "subscribed_topics"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.success) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: &self.errors) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.subscribedTopics) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if !self.errors.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: self.errors, fieldNumber: 2)
    }
    if !self.subscribedTopics.isEmpty {
      try visitor.visitRepeatedStringField(value: self.subscribedTopics, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_SubscribeResponse, rhs: Proto_SubscribeResponse) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.errors != rhs.errors {return false}
    if lhs.subscribedTopics != rhs.subscribedTopics {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_UnsubscribeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UnsubscribeRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "topics"),
    2: .standard(proto: "anticipate_response"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.topics) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.anticipateResponse) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.topics.isEmpty {
      try visitor.visitRepeatedStringField(value: self.topics, fieldNumber: 1)
    }
    if self.anticipateResponse != false {
      try visitor.visitSingularBoolField(value: self.anticipateResponse, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_UnsubscribeRequest, rhs: Proto_UnsubscribeRequest) -> Bool {
    if lhs.topics != rhs.topics {return false}
    if lhs.anticipateResponse != rhs.anticipateResponse {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_UnsubscribeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UnsubscribeResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .same(proto: "errors"),
    3: .standard(proto: "unsubscribed_topics"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.success) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: &self.errors) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.unsubscribedTopics) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if !self.errors.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: self.errors, fieldNumber: 2)
    }
    if !self.unsubscribedTopics.isEmpty {
      try visitor.visitRepeatedStringField(value: self.unsubscribedTopics, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_UnsubscribeResponse, rhs: Proto_UnsubscribeResponse) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.errors != rhs.errors {return false}
    if lhs.unsubscribedTopics != rhs.unsubscribedTopics {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_SubscriptionError: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscriptionError"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
    2: .same(proto: "message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedEnumField(value: &self.code) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.message) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.code.isEmpty {
      try visitor.visitPackedEnumField(value: self.code, fieldNumber: 1)
    }
    if !self.message.isEmpty {
      try visitor.visitRepeatedStringField(value: self.message, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_SubscriptionError, rhs: Proto_SubscriptionError) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.message != rhs.message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_SubscribeToAppTwinRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeToAppTwinRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "session_id"),
    2: .standard(proto: "ciam_id"),
    3: .standard(proto: "device_locale"),
    4: .standard(proto: "app_id"),
    5: .standard(proto: "app_version"),
    6: .standard(proto: "os_name"),
    7: .standard(proto: "os_version"),
    8: .standard(proto: "device_model"),
    9: .standard(proto: "network_carrier"),
    10: .standard(proto: "sdk_version"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ciamID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.deviceLocale) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.appID) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.appVersion) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.osName) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.osVersion) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.deviceModel) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.networkCarrier) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.sdkVersion) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 1)
    }
    if !self.ciamID.isEmpty {
      try visitor.visitSingularStringField(value: self.ciamID, fieldNumber: 2)
    }
    if !self.deviceLocale.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceLocale, fieldNumber: 3)
    }
    if !self.appID.isEmpty {
      try visitor.visitSingularStringField(value: self.appID, fieldNumber: 4)
    }
    if !self.appVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.appVersion, fieldNumber: 5)
    }
    if self.osName != .unknownOperatingSystem {
      try visitor.visitSingularEnumField(value: self.osName, fieldNumber: 6)
    }
    if !self.osVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.osVersion, fieldNumber: 7)
    }
    if !self.deviceModel.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceModel, fieldNumber: 8)
    }
    if !self.networkCarrier.isEmpty {
      try visitor.visitSingularStringField(value: self.networkCarrier, fieldNumber: 9)
    }
    if !self.sdkVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.sdkVersion, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_SubscribeToAppTwinRequest, rhs: Proto_SubscribeToAppTwinRequest) -> Bool {
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.ciamID != rhs.ciamID {return false}
    if lhs.deviceLocale != rhs.deviceLocale {return false}
    if lhs.appID != rhs.appID {return false}
    if lhs.appVersion != rhs.appVersion {return false}
    if lhs.osName != rhs.osName {return false}
    if lhs.osVersion != rhs.osVersion {return false}
    if lhs.deviceModel != rhs.deviceModel {return false}
    if lhs.networkCarrier != rhs.networkCarrier {return false}
    if lhs.sdkVersion != rhs.sdkVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ResubscribeToAppTwinRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ResubscribeToAppTwinRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "session_id"),
    2: .standard(proto: "ciam_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.ciamID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 1)
    }
    if !self.ciamID.isEmpty {
      try visitor.visitSingularStringField(value: self.ciamID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_ResubscribeToAppTwinRequest, rhs: Proto_ResubscribeToAppTwinRequest) -> Bool {
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.ciamID != rhs.ciamID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ResubscribeToAppTwinResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ResubscribeToAppTwinResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.result) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != .unknownError {
      try visitor.visitSingularEnumField(value: self.result, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_ResubscribeToAppTwinResponse, rhs: Proto_ResubscribeToAppTwinResponse) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ResubscribeToAppTwinResponse.ResubscribeResult: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_ERROR"),
    1: .same(proto: "SUCCESS"),
    2: .same(proto: "INVALID_JWT_ERROR"),
    3: .same(proto: "TARGET_DOES_NOT_EXIST"),
  ]
}

extension Proto_SubscribeToAppTwinResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SubscribeToAppTwinResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .standard(proto: "error_code"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.success) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.errorCode) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if self.errorCode != .unknown {
      try visitor.visitSingularEnumField(value: self.errorCode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_SubscribeToAppTwinResponse, rhs: Proto_SubscribeToAppTwinResponse) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.errorCode != rhs.errorCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_UnsubscribeFromAppTwinRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UnsubscribeFromAppTwinRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "session_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sessionID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sessionID.isEmpty {
      try visitor.visitSingularStringField(value: self.sessionID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_UnsubscribeFromAppTwinRequest, rhs: Proto_UnsubscribeFromAppTwinRequest) -> Bool {
    if lhs.sessionID != rhs.sessionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_UnsubscribeFromAppTwinResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UnsubscribeFromAppTwinResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .same(proto: "errors"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.success) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: &self.errors) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if !self.errors.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Proto_SubscriptionError>.self, value: self.errors, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_UnsubscribeFromAppTwinResponse, rhs: Proto_UnsubscribeFromAppTwinResponse) -> Bool {
    if lhs.success != rhs.success {return false}
    if lhs.errors != rhs.errors {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_Heartbeat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Heartbeat"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_Heartbeat, rhs: Proto_Heartbeat) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AssignedVehicles: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AssignedVehicles"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vins"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.vins) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vins.isEmpty {
      try visitor.visitRepeatedStringField(value: self.vins, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AssignedVehicles, rhs: Proto_AssignedVehicles) -> Bool {
    if lhs.vins != rhs.vins {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_AcknowledgeAssignedVehicles: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AcknowledgeAssignedVehicles"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_AcknowledgeAssignedVehicles, rhs: Proto_AcknowledgeAssignedVehicles) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}