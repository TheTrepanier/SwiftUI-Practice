//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Michael Trepanier on 6/1/20.
//  Copyright © 2020 Apple. All rights reserved.
//
// When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can be static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.

import SwiftUI

struct LandmarkList: View {
    var body: some View {

// Instead of specifying a list’s elements individually, you can generate rows directly from a collection.

// You can create a list that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The list transforms each element in the collection into a child view by using the supplied closure.
        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }.navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
