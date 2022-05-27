//
//  PKHUDSuccess.swift
//  SwiftUI-PKHUD-Demo
//
//  Created by 宮本大新 on 2022/05/27.
//

import SwiftUI
import PKHUD

struct PKHUDView: UIViewRepresentable {
    @Binding var isPresented: Bool
    var HUDContent: HUDContentType
    var delay: Double
    func makeUIView(context: UIViewRepresentableContext<PKHUDView>) -> UIView {
        return UIView()
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PKHUDView>) {
        if isPresented {
            HUD.flash(HUDContent, delay: delay) { finished in
                isPresented = false
            }
        }
    }
}
