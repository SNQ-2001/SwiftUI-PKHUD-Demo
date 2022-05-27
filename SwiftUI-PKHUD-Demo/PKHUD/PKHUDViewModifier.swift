//
//  PKHUDViewModifier.swift
//  SwiftUI-PKHUD-Demo
//
//  Created by 宮本大新 on 2022/05/27.
//

import SwiftUI
import PKHUD

struct PKHUDViewModifier<Parent: View>: View {
    @Binding var isPresented: Bool
    var HUDContent: HUDContentType
    var delay: Double
    var parent: Parent
    var body: some View {
        ZStack {
            parent
            if isPresented {
                PKHUDView(isPresented: $isPresented, HUDContent: HUDContent, delay: delay)
            }
        }
    }
}
