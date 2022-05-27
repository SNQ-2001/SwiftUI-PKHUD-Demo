//
//  ContentView.swift
//  SwiftUI-PKHUD-Demo
//
//  Created by 宮本大新 on 2022/05/27.
//

import SwiftUI
import PKHUD

struct ContentView: View {
    @State var progress: Bool = false
    @State var systemActivity: Bool = false
    @State var success: Bool = false
    @State var error: Bool = false
    @State var label: Bool = false
    @State var image: Bool = false
    @State var labeledProgress: Bool = false
    @State var labeledSuccess: Bool = false
    @State var labeledError: Bool = false
    @State var labeledImage: Bool = false
    @State var labeledRotatingImage: Bool = false
    let text: [String] = ["progress", "systemActivity", "success", "error", "label", "image", "labeledProgress", "labeledSuccess", "labeledError", "labeledImage", "labeledRotatingImage"]
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<11) { index in
                    Button(text[index]) {
                        buttonAction(index: index)
                    }
                }
            }
            .navigationTitle("PKHUD")
        }
        .PKHUD(isPresented: $progress, HUDContent: .progress, delay: 1.0)
        .PKHUD(isPresented: $systemActivity, HUDContent: .systemActivity, delay: 1.0)
        .PKHUD(isPresented: $success, HUDContent: .success, delay: 1.0)
        .PKHUD(isPresented: $error, HUDContent: .error, delay: 1.0)
        .PKHUD(isPresented: $label, HUDContent: .label("ラベル"), delay: 1.0)
        .PKHUD(isPresented: $image, HUDContent: .image(UIImage(named: "sample")), delay: 1.0)
        .PKHUD(isPresented: $labeledProgress, HUDContent: .labeledProgress(title: "読み込み中", subtitle: "読み込み中です"), delay: 1.0)
        .PKHUD(isPresented: $labeledSuccess, HUDContent: .labeledSuccess(title: "成功", subtitle: "成功しました"), delay: 1.0)
        .PKHUD(isPresented: $labeledError, HUDContent: .labeledError(title: "失敗", subtitle: "失敗しました"), delay: 1.0)
        .PKHUD(isPresented: $labeledImage, HUDContent: .labeledImage(image: UIImage(named: "sample"), title: "画像ラベル", subtitle: "画像ラベルです"), delay: 1.0)
        .PKHUD(isPresented: $labeledRotatingImage, HUDContent: .labeledRotatingImage(image: UIImage(named: "sample"), title: "回転画像ラベル", subtitle: "回転画像ラベルです"), delay: 1.0)
    }
    func buttonAction(index: Int) {
        switch index {
        case 0:
            progress.toggle()
        case 1:
            systemActivity.toggle()
        case 2:
            success.toggle()
        case 3:
            error.toggle()
        case 4:
            label.toggle()
        case 5:
            image.toggle()
        case 6:
            labeledProgress.toggle()
        case 7:
            labeledSuccess.toggle()
        case 8:
            labeledError.toggle()
        case 9:
            labeledImage.toggle()
        case 10:
            labeledRotatingImage.toggle()
        default:
            print("エラー")
        }
    }
}



