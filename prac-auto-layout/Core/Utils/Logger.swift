//
//  Logger.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

final class Logger {
    
    private static let defaultMessage = "Touch here."
    
    /// 커스텀 로깅
    ///
    /// 로그 구성
    /// - 로깅 위치(로그를 찍는 함수)
    /// - 로그 메시지
    static func log(_ message: Any? = defaultMessage, file: String = #fileID, function: String = #function) {
        let fileName = String(file.split(separator: "/")[1])
        
        if let message = message {
            print(fileName, function, ">", message)
        } else {
            print(fileName, function, ">", "nil")
        }
    }
    
}
