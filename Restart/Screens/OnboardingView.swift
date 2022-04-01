//
//  OnboardingView.swift
//  Restart
//
//  Created by Ewerson on 30/03/22.
//

import SwiftUI

struct OnboardingView: View {
	// MARK: - Property
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = true

	// MARK: - Body
    var body: some View {
		 VStack(spacing: 20){
			 Text("OnBoarding")
				 .font(.largeTitle)
			 
			 Button {
				 isOnboardingViewActive = false
			 } label: {
				 Text("Iniciar")
			 }
		 }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
