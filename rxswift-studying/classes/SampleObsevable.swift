//
//  SampleObsevable.swift
//  rxswift-studying
//
//  Created by kan on 2018/02/24.
//  Copyright © 2018年 kan. All rights reserved.
//

import RxSwift

class SampleObservable {
  
  enum SampleError: Error {
    case Something
  }
  
  func IntegerObservable() -> Observable<Int> {
    return Observable.create { observer in
      observer.on(.next(1))
      observer.on(.next(2))
      observer.on(.next(3))
      observer.on(.completed)
      return Disposables.create()
    }
  }
  
  func CharObservable() -> Observable<Character> {
    return Observable.create { observer in
      observer.on(.next("🙈"))
      observer.on(.next("🙊"))
      observer.on(.next("🙉"))
      observer.on(.completed)
      return Disposables.create()
    }
  }
  
  func StringObservable() -> Observable<String> {
    return Observable.create { observer in
      observer.on(.next("🙈"))
      observer.on(.next("🙈🙊"))
      observer.on(.next("🙈🙊🙉"))
      observer.on(.completed)
      return Disposables.create()
    }
  }
}
