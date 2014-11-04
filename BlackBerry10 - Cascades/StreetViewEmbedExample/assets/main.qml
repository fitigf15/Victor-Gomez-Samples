/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2

Page {
    Container {
        Label {
            text: "latitude"
        }
        TextField {
            id: latTxt
            text: "37.869260"
        }
        Label {
            text: "longitude"
        }
        TextField {
            id: lonTxt
            text: "-122.254811"
        }
     WebView {
         preferredHeight: 720
         id: webView
         html: 
         "<head>
         <meta charset=\"utf-8\">
         <title>Street View containers</title>
         <style>
         html, body, #map-canvas {
         height: 100%;
         margin: 0px;
         padding: 0px
         }
         </style>
         <script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp\"></script>
         <script>
         function initialize() {
         var bryantPark = new google.maps.LatLng("+latTxt.text+", "+lonTxt.text+");
         var panoramaOptions = {
         position: bryantPark,
         pov: {
         heading: 165,
         pitch: 0
         },
         zoom: 1
         };
         var myPano = new google.maps.StreetViewPanorama(
         document.getElementById('map-canvas'),
         panoramaOptions);
         myPano.setVisible(true);
         }
         
         google.maps.event.addDomListener(window, 'load', initialize);
         
         </script>
         </head>
         <body>
         <div id=\"map-canvas\"></div>
         </body>"
     }
 }
}
