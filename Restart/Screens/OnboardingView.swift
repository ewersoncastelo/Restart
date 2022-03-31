//
//  OnboardingView.swift
//  Restart
//
//  Created by Ewerson on 30/03/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
		 VStack(spacing: 20){
			 Text("Onboarding")
				 .font(.largeTitle)
			 
			 Button {
				 // some action
				 print("Estreia do Ano")
			 } label: {
				 Text("Start")
			 }
		 }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
