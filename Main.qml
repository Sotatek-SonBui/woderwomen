import QtQuick 2.15
import QtQuick.Window
import QtQuick.Controls 2.15
import ButtonAction 1.0

Window {
    width: 960
    height: 600
    visible: true
    color: "lightgray"
    title: qsTr("Mediaplayer select channel")

    Row {
        x: 130
        y: 100
        spacing: 200

        Column {
            Button {
                id: button1
                width: 100
                height: 100
                text: "Button 1"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction1
                }

                onClicked: {
                    buttonAction1.doSomething(button1.text)
                    // console.log(buttonAction1.color)
                    // buttonAction1.color = "green"
                    // onColorChanged: {
                    //     console.log("color is changed to: ", buttonAction1.color)
                    // }
                    // buttonAction1.testSlot()
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    // buttonAction1.colorChanged()
                    console.log("Select1: " + currentText);
                }
            }
        }

        Column {
            Button {
                id: button2
                width: 100
                height: 100
                text: "Button 2"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction2
                }

                onClicked: {
                    buttonAction2.doSomething(button2.text)
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    console.log("Select2: " + currentText);
                }
            }
        }

        Column {
            Button {
                id: button3
                width: 100
                height: 100
                text: "Button 3"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction3
                }

                onClicked: {
                    buttonAction3.doSomething(button3.text)
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    console.log("Select: " + currentText);
                }
            }
        }
    }

    Row {
        x: 130
        y: 350
        spacing: 200

        Column {
            Button {
                id: button4
                width: 100
                height: 100
                text: "Button 4"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction4
                }

                onClicked: {
                    buttonAction4.doSomething(button4.text)
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    console.log("Select: " + currentText);
                }
            }
        }

        Column {
            Button {
                id: button5
                width: 100
                height: 100
                text: "Button 5"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction5
                }

                onClicked: {
                    buttonAction5.doSomething(button5.text)
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    console.log("Select: " + currentText);
                }
            }
        }

        Column {
            Button {
                id: button6
                width: 100
                height: 100
                text: "Button 6"
                font.pixelSize: 20

                ButtonAction {
                    id: buttonAction6
                }

                onClicked: {
                    buttonAction6.doSomething(button6.text)
                }
            }

            ComboBox {
                width: 100
                model: ["batman", "superman", "spiderman", "aquaman"]
                currentIndex: 0

                onCurrentTextChanged: {
                    console.log("Select: " + currentText);
                }
            }
        }
    }
}
