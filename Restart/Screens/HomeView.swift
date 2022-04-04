//
//  HomeView.swift
//  Restart
//
//  Created by Ewerson on 30/03/22.
//

import SwiftUI

struct HomeView: View {
	// MARK: - PROPERTY
	@AppStorage("onboarding") var isOnboardingViewActive: Bool = false
	
	var body: some View {
		VStack{
			// MARK: - HEADER
			Spacer()
			
			Image("character-2")
				.resizable()
				.scaledToFit()
				.padding()
			
			// MARK: - CENTER
			Text("O tempo que leva à maestria depende da intensidade do nosso foco.")
				.font(.title3)
				.fontWeight(.light)
				.foregroundColor(.secondary)
				.multilineTextAlignment(.center)
				.padding()
			
			// MARK: - FOOTER
			Spacer()
			
			Button {
				isOnboardingViewActive = true
			} label: {
				Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
					.imageScale(.large)
				
				Text("Reinciar")
					.font(.system(.title3, design: .rounded))
					.fontWeight(.bold
					)
			}
			.buttonStyle(.borderedProminent)
			.buttonBorderShape(.capsule)
			.controlSize(.large)
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
