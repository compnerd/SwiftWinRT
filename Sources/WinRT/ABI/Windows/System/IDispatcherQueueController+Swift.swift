// Copyright © 2021 Saleem Abdulrasool <compnerd@compnerd.org>
// SPDX-License-Identifier: BSD-3

import CWinRT

extension IDispatcherQueueController {
  public var get_DispatcherQueue: IDispatcherQueue {
    var value: UnsafeMutablePointer<__x_ABI_CWindows_CSystem_CIDispatcherQueue>?
    try! self.get_DispatcherQueue(&value)
    return IDispatcherQueue(consuming: value)
  }

  public func ShutdownQueueAsync() throws -> IAsyncAction {
    var operation: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIAsyncAction>?
    try self.ShutdownQueueAsync(&operation)
    return IAsyncAction(consuming: operation)
  }
}
