import QtQuick 2.7
import QtQuick.Controls 1.4

Rectangle {
	
	color: 'transparent'
	anchors.fill: parent
	
	CustomButton {
		
		id: button
		
		objectName: 'myButton1'
		
		text: qsTr('Hello world!')
		
		onClicked: { console.log('o hai'); cb.call('ohai', { text: 'its me' }) }
		
		anchors.left: parent.left
		anchors.leftMargin: 24
		anchors.top: parent.top
		anchors.topMargin: 24
		
	}
	
	TextArea {
		text: 'Hello'
		textColor: 'black'
		font.pixelSize: 24
		
		anchors.left: button.left
		anchors.top: button.bottom
		anchors.topMargin: 24
	}
	
}
