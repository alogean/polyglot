/*
 * Copyright (c) 2009, Sun Microsystems, Inc.
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without 
 * modification, are permitted provided that the following conditions are met:
 * 
 *  * Redistributions of source code must retain the above copyright notice, 
 *    this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright 
 *    notice, this list of conditions and the following disclaimer in 
 *    the documentation and/or other materials provided with the distribution.
 *  * Neither the name of Sun Microsystems, Inc. nor the names of its 
 *    contributors may be used to endorse or promote products derived 
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED 
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
 */
 
package delicious;

public class Main {
    

    public-read var imageView: javafx.scene.image.ImageView;//GEN-BEGIN:main
    public-read var label: javafx.scene.control.Label;
    public-read var userTitle: javafx.scene.control.Label;
    public-read var user: javafx.scene.control.TextBox;
    public-read var tagTitle: javafx.scene.control.Label;
    public-read var tag: javafx.scene.control.TextBox;
    public-read var button: javafx.scene.control.Button;
    public-read var vbox: javafx.scene.layout.VBox;
    public-read var listView: javafx.scene.control.ListView;
    public-read var hyperlink: javafx.scene.control.Hyperlink;
    public-read var button2: javafx.scene.control.Button;
    public-read var progressIndicator: javafx.scene.control.ProgressIndicator;
    public-read var hbox: javafx.scene.layout.HBox;
    public-read var vbox2: javafx.scene.layout.VBox;
    public-read var scene: javafx.scene.Scene;
    public-read var image: javafx.scene.image.Image;
    public-read var font: javafx.scene.text.Font;
    public-read var httpDataSource: org.netbeans.javafx.datasrc.HttpDataSource;
    
    public-read var currentState: org.netbeans.javafx.design.DesignState;
    
    // <editor-fold defaultstate="collapsed" desc="Generated Init Block">
    init {
        userTitle = javafx.scene.control.Label {
            text: "User"
        };
        user = javafx.scene.control.TextBox {
            width: 228.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind user.width
                height: bind user.height
            }
            action: buttonAction
        };
        tagTitle = javafx.scene.control.Label {
            text: "Tags (comma separated list)"
        };
        tag = javafx.scene.control.TextBox {
            width: 228.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind tag.width
                height: bind tag.height
            }
            action: buttonAction
        };
        button = javafx.scene.control.Button {
            visible: true
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind button.width
                height: bind button.height
                hpos: javafx.geometry.HPos.RIGHT
            }
            text: "Show"
            action: buttonAction
        };
        vbox = javafx.scene.layout.VBox {
            layoutX: 6.0
            layoutY: 40.0
            width: 228.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind vbox.width
                height: bind vbox.height
            }
            content: [ userTitle, user, tagTitle, tag, button, ]
            spacing: 6.0
        };
        listView = javafx.scene.control.ListView {
            visible: true
            layoutX: 0.0
            layoutY: 0.0
            width: 228.0
            height: 180.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind listView.width
                height: bind listView.height
            }
            items: bind httpDataSource.getRecordSet().all()
        };
        hyperlink = javafx.scene.control.Hyperlink {
            visible: true
            text: bind if (listView.selectedItem !=null) (listView.selectedItem as org.netbeans.javafx.datasrc.Record).getString("u") else "<Click on items to see the URL>"
        };
        button2 = javafx.scene.control.Button {
            visible: true
            text: "Button"
        };
        progressIndicator = javafx.scene.control.ProgressIndicator {
            visible: bind httpDataSource.fetchingData
            width: 30.0
            height: 30.0
            layoutInfo: javafx.scene.layout.LayoutInfo {
                width: bind progressIndicator.width
                height: bind progressIndicator.height
            }
        };
        hbox = javafx.scene.layout.HBox {
            visible: true
            content: [ button2, progressIndicator, ]
            spacing: 6.0
        };
        vbox2 = javafx.scene.layout.VBox {
            visible: true
            layoutX: 6.0
            layoutY: 40.0
            translateX: 100.0
            translateY: 140.0
            scaleX: 0.1
            scaleY: 0.1
            content: [ listView, hyperlink, hbox, ]
            spacing: 6.0
        };
        image = javafx.scene.image.Image {
            url: "{__DIR__}resources/favicon16.png"
        };
        imageView = javafx.scene.image.ImageView {
            layoutX: 6.0
            layoutY: 6.0
            image: image
        };
        font = javafx.scene.text.Font {
            size: 16.0
        };
        label = javafx.scene.control.Label {
            layoutX: 28.0
            layoutY: 6.0
            text: "Delicious Browser"
            font: font
        };
        scene = javafx.scene.Scene {
            width: 240.0
            height: 320.0
            content: javafx.scene.layout.Panel {
                content: getDesignRootNodes ()
            }
        };
        httpDataSource = org.netbeans.javafx.datasrc.HttpDataSource {
            url: ""
            parser: org.netbeans.javafx.datasrc.Parsers.JSON_PARSER
        };
        
        currentState = org.netbeans.javafx.design.DesignState {
            names: [ "Search", "List", ]
            stateChangeType: org.netbeans.javafx.design.DesignStateChangeType.PAUSE_AND_PLAY_FROM_START
            actual: 0
            createTimeline: function (actual) {
                if (actual == 0) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 0.001ms
                                action: function() {
                                    button2.text = "Button";
                                    httpDataSource.autoRefresh = true;
                                }
                            }
                            javafx.animation.KeyFrame {
                                time: 800ms
                                values: [
                                    vbox.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.scaleX => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.scaleY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.translateX => 100.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.translateY => 140.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.scaleX => 0.1 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.scaleY => 0.1 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                            }
                        ]
                    }
                } else if (actual == 1) {
                    javafx.animation.Timeline {
                        keyFrames: [
                            javafx.animation.KeyFrame {
                                time: 0.001ms
                                action: function() {
                                    button2.text = "Back";
                                    button2.action = button2Action;
                                    httpDataSource.autoRefresh = false;
                                    httpDataSource.recordDisplayName = httpDataSourceRecordDisplayName;
                                }
                            }
                            javafx.animation.KeyFrame {
                                time: 800ms
                                values: [
                                    vbox.translateX => -96.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.translateY => 200.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.scaleX => 0.1 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox.scaleY => 0.1 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.translateX => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.translateY => 0.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.scaleX => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                    vbox2.scaleY => 1.0 tween javafx.animation.Interpolator.EASEBOTH,
                                ]
                            }
                        ]
                    }
                } else {
                    null
                }
            }
        }
    }// </editor-fold>
    
    // <editor-fold defaultstate="collapsed" desc="Generated Design Functions">
    public function getDesignRootNodes () : javafx.scene.Node[] {
        [ imageView, label, vbox, vbox2, ]
    }
    
    public function getDesignScene (): javafx.scene.Scene {
        scene
    }// </editor-fold>//GEN-END:main

    function httpDataSourceRecordDisplayName (record:org.netbeans.javafx.datasrc.Record): String {
        record.getString("d")
    }

    function button2Action (): Void {
        currentState.previous();
    }

    def URL = "http://feeds.delicious.com/v2/json";

    function buttonAction (): Void {
        def u = user.text.trim();
        // required by mobile profile
        def t = tag.text.trim().replace(','.charAt(0),'+'.charAt(0));
        var newURL = URL;
        if (u != "") {
            if (t != "") {
                newURL = "{URL}/{u}/{t}"
            } else {
                newURL = "{URL}/{u}"
            }
        } else {
            if (t != "") {
                newURL = "{URL}/tag/{t}"
            }
        }
        listView.select(-1);
        httpDataSource.url = newURL;
        currentState.next();
    }


}

