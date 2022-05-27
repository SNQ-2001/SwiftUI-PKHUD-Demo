//
//  PKHUD.swift
//  SwiftUI-PKHUD-Demo
//
//  Created by 宮本大新 on 2022/05/27.
//

import SwiftUI
import PKHUD

extension View {
    public func PKHUD(isPresented: Binding<Bool>, HUDContent: HUDContentType, delay: Double) -> some View {
        PKHUDViewModifier(isPresented: isPresented, HUDContent: HUDContent, delay: delay, parent: self)
    }
}
