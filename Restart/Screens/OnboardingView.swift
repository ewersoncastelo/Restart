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
					Circle()
						.stroke(.white.opacity(0.2), lineWidth: 40)
						.frame(width: 260, height: 260, alignment: .center)
					
					Circle()
						.stroke(.white.opacity(0.2), lineWidth: 80)
						.frame(width: 260, height: 260, alignment: .center)
					
					Image("character-1")
						.resizable()
						.scaledToFit()
				}
				
				Spacer()
				
				// MARK: - Footer
				ZStack{
					Capsule()
						.fill(Color.white.opacity(0.2))
					
					Capsule()
						.fill(Color.white.opacity(0.2))
						.padding(8)
					
					Text("Iniciar")
						.font(.system(.title3, design: .rounded))
						.fontWeight(.bold)
						.foregroundColor(.white)
						.offset(x: 20)
					
					HStack{
						Capsule()
							.fill(Color("ColorRed"))
							.frame(width: 80)
						
						Spacer()
					}
					
					HStack {
						ZStack{
							Circle()
								.fill(Color("ColorRed"))
							Circle()
								.fill(.black.opacity(0.15))
								.padding(8)
							Image(systemName: "chevron.right.2")
								.font(.system(size: 24, weight: .bold))
						}
						.foregroundColor(.white)
						.frame(width: 80, height: 80, alignment: .center)
						.onTapGesture {
							isOnboardingViewActive = false
						}
						
						Spacer()
					}
				}
				.frame(height: 80, alignment: .center)
				.padding()
			}
		}
	}
}

struct OnboardingView_Previews: PreviewProvider {
	static var previews: some View {
		OnboardingView()
	}
}
