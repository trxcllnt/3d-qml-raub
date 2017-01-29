import QtQuick 2.7

Rectangle {
	
	color: 'transparent'
	anchors.fill: parent
	
	Text {
		
		text: qsTr('Hello qml!')
		
		font.pixelSize: 14
		font.bold: true
		color: 'steelblue'
		
		anchors.left: parent.left
		anchors.leftMargin: 24
		anchors.top: parent.top
		anchors.topMargin: 24
		
	}
	
}
