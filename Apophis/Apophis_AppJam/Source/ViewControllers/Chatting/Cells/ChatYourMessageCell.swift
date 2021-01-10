//
//  ChatYourMessageCell.swift
//  Apophis_AppJam
//
//  Created by 송지훈 on 2020/12/28.
//

import UIKit
import Lottie

class ChatYourMessageCell: UITableViewCell {
    //MARK:- IBOutlet Part

    @IBOutlet weak var waitMessageImageView: UIImageView!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var messageBackgroundImageView: UIImageView!
    
    
    //MARK:- Variable Part

    let loadingView = AnimationView()
    
    //MARK:- Constraint Part

    
    
    //MARK:- Life Cycle Part

    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    
    
    
    //MARK:- IBAction Part
    
    

    //MARK:- default Setting Function Part
    
    
    
    func setMessage(message : String)
    {
        

        
        let padding = messageTextView.textContainer.lineFragmentPadding
        messageTextView.textContainerInset =  UIEdgeInsets(top: 0, left: -padding, bottom: 0, right: -padding)
        
        messageTextView.font = UIFont.gmarketFont(weight: .Medium, size: 14)
        messageTextView.textColor = .white
        messageTextView.text = message

        
        messageTextView.translatesAutoresizingMaskIntoConstraints = true
        
        messageTextView.sizeToFit()
        
        messageTextView.isScrollEnabled = false

        messageTextView.contentInset = .zero
        
        messageTextView.alpha = 0
        waitMessageImageView.alpha = 0
        messageBackgroundImageView.alpha = 0
        
        print("너의 메세지",message,messageTextView.frame)


    }
    
    func setSnowBackground()
    {
        NotificationCenter.default.post(name: NSNotification.Name("setSnowBackground"), object: nil)
    }
    
    func loadingAnimate(index : Int)
    {
        loadingView.frame = waitMessageImageView.bounds
        loadingView.animation = Animation.named("message_loading")
        loadingView.contentMode = .scaleAspectFit
        loadingView.loopMode = .loop
        loadingView.play()
        waitMessageImageView.addSubview(loadingView)
        

        UIView.animateKeyframes(withDuration: 0.25, delay: 0, options: .allowUserInteraction) {
            

                UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/12,animations: {
                    
                    self.waitMessageImageView.alpha = 1
                    
                })
                
                UIView.addKeyframe(withRelativeStartTime: 10/12, relativeDuration: 1/12, animations: {
                    
                    self.waitMessageImageView.alpha = 0
                    
                })
            
                UIView.addKeyframe(withRelativeStartTime: 11/12, relativeDuration: 1/12, animations: {
                    
                    self.messageTextView.alpha = 1
                    self.messageBackgroundImageView.alpha = 1
                    
                })
            
        } completion: { (_) in
            self.loadingView.stop()
            NotificationCenter.default.post(name: NSNotification.Name("AponimousMessageEnd"), object: index)
        }

    }
    
    func showMessageWithNoAnimation()
    {
        loadingView.isHidden = true
        messageTextView.alpha = 1
        messageBackgroundImageView.alpha = 1
    }
    
    
    
    
    
    
    func setMessageRepeat(message : String)
    {
        let padding = messageTextView.textContainer.lineFragmentPadding
        messageTextView.textContainerInset =  UIEdgeInsets(top: 0, left: -padding, bottom: 0, right: -padding)
        
        messageTextView.font = UIFont.gmarketFont(weight: .Medium, size: 14)
        messageTextView.textColor = .white
        messageTextView.text = message

        messageTextView.sizeToFit()
        
        messageTextView.translatesAutoresizingMaskIntoConstraints = true
        messageTextView.isScrollEnabled = false
        messageTextView.contentInset = .zero
        
        
        
        messageTextView.alpha = 0
        waitMessageImageView.alpha = 0
        messageBackgroundImageView.alpha = 0

    }
    
    

    //MARK:- Function Part


}

//MARK:- extension 부분

