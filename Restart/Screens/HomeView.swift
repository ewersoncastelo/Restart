//
//  HomeView.swift
//  Restart
//
//  Created by Ewerson on 30/03/22.
//

import SwiftUI

struct HomeView: View {
	// MARK: - Property
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = false
	
	// MARK: - Body
    var body: some View {
		 VStack(spacing: 20) {
			 Text("Home")
				 .font(.largeTitle)
			 
			 Button {
				 isOnboardingViewActive = true
			 } label: {
				 Text("Reiniciar")
			 }
		 }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
