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
	
	@State private var isAnimating: Bool = false
	
	var body: some View {
		VStack{
			// MARK: - HEADER
			Spacer()
			
			ZStack {
				CircleGroupView(ShapeColor: .black, ShapeOpacity: 0.1)
				
				Image("character-2")
					.resizable()
					.scaledToFit()
					.padding()
					.offset(y: isAnimating ? 35 : -35)
					.animation(
						Animation
							.easeOut(duration: 4)
							.repeatForever(),
						value: isAnimating
					)
			}
			
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
				withAnimation {
					playSound(sound: "success", type: "m4a")
					isOnboardingViewActive = true
				}
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
		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
				isAnimating = true
			}
		}
	}
}

struct HomeView_Previews: PreviewProvider {
	static var previews: some View {
		HomeView()
	}
}
