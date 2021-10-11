//
//  GenericBaseView.swift
//  HW3_Mustafa_Gorgun
//
//  Created by MstfGrgn on 10.10.2021.
//

import UIKit

class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        super.init(frame: frame)
        self.data = data
        loadDataView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadDataView() {}
    
    func setData(with data: T?) {
        self.data = data
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
}
