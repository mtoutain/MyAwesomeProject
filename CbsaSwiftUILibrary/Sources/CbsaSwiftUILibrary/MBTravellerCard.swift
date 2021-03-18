//
//  MBTravellerCard.swift
//
//
//  Created by Michel Toutain on 2021-03-17.
//

import SwiftUI

struct TravellerCard: View {
    
    public var surName:String
    public var givenNames:String
    
    public var body: some View {
        
        ZStack(alignment: .bottomLeading) {
//            Image(uiImage: #imageLiteral(resourceName: "bg_traveller_card"))
            VStack(alignment: .leading, spacing: 2) {
                Text(surName)
                    .font(setSurNameFontSize(for: surName)).fontWeight(.light)
                    .frame(width: setSurnameFrame(for: surName), alignment: .leading)
                Text(givenNames)
                    .font(setGivenNameFontSize(for: givenNames))
                    .fontWeight(.semibold)
                    .frame(width: setGivenNameFrame(for: givenNames), alignment: .leading)
            }
            .padding([.leading, .bottom], 10)
        }
        .frame(width: 244, height: 150)
        .cornerRadius(10)
        
    }
    
    // MARK: - Private Methods
    
    func setGivenNameFontSize(for text: String) -> Font {
        
        var fontSize: Font = .body
        if text.count >= 23 {
            fontSize = .subheadline
        }
        
        return fontSize
    }
    
    func setGivenNameFrame(for text: String) -> CGFloat {
        
        var frameWidth: CGFloat = 205
        
        if text.count >= 15 {
            frameWidth = 185
        }
        
        return frameWidth
    }
    
    func setSurNameFontSize(for text: String) -> Font {
        
        var fontSize: Font = .subheadline
        if text.count >= 23 {
            fontSize = .footnote
        }
        
        return fontSize
    }
    
    func setSurnameFrame(for text: String) -> CGFloat {
        
        var frameWidth: CGFloat = 175
        
        if text.count >= 23 {
            frameWidth = 165
        }
        
        return frameWidth
    }
}

//struct TravellerCard_Previews: PreviewProvider {
//    static var previews: some View {
//        TravellerCard(surName: "Benjamin-Arsenault", givenNames: "Elizabeth-Dianne")
//    }
//}

struct MBTravellerCardLibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(MBTravellerCard(),title: "My Progress View", category: .control)
    }
}
