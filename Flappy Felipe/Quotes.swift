//  Created by Grant Trevathan on 5/2/19.
//  Copyright © 2019 Ohm-Made LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var quotes = ["I’m the least racist person you have ever interviewed." , "Despite the constant negative press covfefe" ," What you’re seeing and what you’re reading is not what’s happening" , "I will build a great, great wall on our southern border, and I will have Mexico pay for that wall." , "Mark my words,It's really cold outside, they are calling it a major freeze, weeks ahead of normal. Man, we could use a big fat dose of global warming!" , "The concept of global warming was created by and for the Chinese in order to make U.S. manufacturing non-competitive." , "To be blunt, people would vote for me. They just would. Why? Maybe because I'm so good looking." , "If Hillary Clinton can't satisfy her husband what makes her think she can satisfy America?" , "If you look at Saddam Hussein, he killed terrorists. I'm not saying he was an angel, but this guy killed terrorists." , "John McCain is not a war hero. He's a war hero - he's a war hero 'cause he was captured. I Like people that weren't captured, OK, I hate to tell you." , "I look very much forward to showing my financials, because they are huge." , "Sorry losers and haters, but my IQ is one of the highest - and you all know it! Please don't feel so stupid or insecure, it's not your fault." , "Certain guys tell me they want women of substance, not beautiful models. It just means they can't get beautiful models." , "She does have a very nice figure... If Ivanka weren't my daughter, perhaps I'd be dating her." , "I'm intelligent. Some people would say I'm very, very, very intelligent." , "My fingers are long and beautiful, as, it has been well documented, are various other parts of my body." , "I could stand in the middle of 5th Avenue and shoot somebody and I wouldn't lose voters." , "You could see there was bloody coming out of her eyes. Blood coming out of her wherever." , "Why are we having all these people from shithole countries coming here?" , "I loved my previous life. I had so many things going. This is more work than in my previous life. I thought it would be easier." , "Look at my African-American!" , "I had some beautiful pictures taken in which I had a big smile on my face. I looked happy, I looked content, I looked like a very nice person, which in theory I am." , "I think I am actually humble. I think I’m much more humble than you would understand." , "(On Puerto Rico) This is an island surrounded by water, big water, ocean water." , "I think the only difference between me and other candidates is that I'm more honest and my women are more beautiful." , "You know, it really doesn't matter what the media write as long as you've got a young, and beautiful, piece of ass."]
    

    @IBOutlet var QuotesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        QuotesLabel.textColor = UIColor.white
        QuotesLabel.contentMode = .scaleAspectFit
        QuotesLabel.layer.cornerRadius = 10.0
        QuotesLabel.adjustsFontSizeToFitWidth = true
        QuotesLabel.minimumScaleFactor = 0.2
        QuotesLabel.numberOfLines = 1-10
        
        if  let quote = quotes.randomElement() {
            QuotesLabel.text = "\(quote)"
            
            
            
            // Do any additional setup after loading the view.
        }
        
    }
    
}
