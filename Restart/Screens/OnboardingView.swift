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
		ZStack {
			Color("ColorBlue")
				.ignoresSafeArea(.all, edges: .all)
			
			VStack(spacing: 20){
				// MARK: - Header
				Spacer()
				
				VStack(spacing: 0){
					Text("Compartilhar.")
						.font(.system(size: 60))
						.fontWeight(.heavy)
						.foregroundColor(.white)
					
					Text("""
							não é sobre o quanto doamos,
							mas quanto amor colocamos ao doar
						""")
					.font(.title3)
					.fontWeight(.light)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
					.padding(.horizontal, 10)
				}
			
				// MARK: - Center
				ZStack{
					
				}
				
				Spacer()
				
				// MARK: - Footer
				Button {
					isOnboardingViewActive = false
				} label: {
					Text("Iniciar")
				}
			}
		}
	}
}

struct OnboardingView_Previews: PreviewProvider {
	static var previews: some View {
		OnboardingView()
	}
}
