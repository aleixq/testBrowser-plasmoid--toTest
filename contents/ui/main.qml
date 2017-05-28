
import QtQuick 2.1
import QtWebEngine 1.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
/*import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras
*/
Item {
    id: root
    ColumnLayout {
        Button{
            text: "load webengineview"
            onClicked:webviewloader.sourceComponent=webviewcp;
        }
        Button{
            text: "load rectangle"
          onClicked:webviewloader.sourceComponent=webviewcp_r;
        }

        Loader{
	    id : webviewloader
            sourceComponent: webviewcp_r
            asynchronous: true
            visible: status == Loader.Ready
        }
        Component{
            id:webviewcp
            WebEngineView {
              anchors.fill: parent
              url: "http://www.qt.io"
              width:500
              height:500
            }
        }
        Component{
          id:webviewcp_r
          Rectangle {
            color: "red"
            width:500
            height:500
          }
        }
    }
    Component.onCompleted: {
        //webviewloader.setSourceComponent(webviewcp);
    }

}

