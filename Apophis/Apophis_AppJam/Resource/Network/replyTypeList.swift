//
//  replyTypeList.swift
//  Apophis_AppJam
//
//  Created by 송지훈 on 2021/01/10.
//

import Foundation

func replyTypeFromKorean(replyType : String) -> messageTypeList
{
    if replyType == ""
    {
        return .normal
    }
    else if replyType == "단일 보기 선택"
    {
        return .selectList
    }
    else if replyType == "장문형 텍스트 입력"
    {
        return .userAnswerWithComplete
    }
    else if replyType == "기능 액션 버튼 - 나침반"
    {
        return .compassButton
    }
    else if replyType == "카테고리 선택"
    {
        return .selectAdjective
    }
    else if replyType == "기능 액션 버튼 - 카메라"
    {
        return .camera
    }
    else if replyType == "다중 보기 선택"
    {
        return .selectList
    }
    
    
    
    
    else if replyType == "기능 액션 버튼 - 시간대 설정"
    {
        return .setTimeButton
    }
    
    else if replyType == "단답형 텍스트 입력"
    {
        return .enter3words
    }
    else if replyType == "기능 액션 버튼 - 두개의 나 "
    {
        return .brightAndDark
    }
    
    else
    {
        print("replyTypeFromKorean 에서 아무 경우도 안빠짐")
        return .normal
    }

}