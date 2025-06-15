import Quickshell 
import Quickshell.Io
import QtQuick 

PanelWindow {
  anchors {
    top: true
    left: true
    right: true
  }

  implicitHeight: 30
  color: "#222021"

  Text {
    id: clock
    anchors.centerIn: parent

    Process {
      id: dateProc
      command: ["date"]
      running: true
      stdout: StdioCollector {
        onStreamFinished: clock.text = this.text
      }
    }

    Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: dateProc.running = true
    }

    color: "white"
  }

  Text {
    id: battery
    anchors.right: parent.right
    anchors.rightMargin: 10
    anchors.verticalCenter: parent.verticalCenter


    Process {
      id: batteryProc
      command: ["battery"]
      running: true
      stdout: StdioCollector {
        onStreamFinished: battery.text = this.text
      }
    }

    Timer {
     interval: 1000
     running: true
     repeat: true
     onTriggered: batteryProc.running = true
    }

    color: "white"
  }
}
