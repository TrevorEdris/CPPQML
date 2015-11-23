#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QDebug>
#include <QUrl>
#include <QQmlContext>

#include <QStandardPaths>
#include <QStringList>

//#include <QFile>

int main(int argc, char *argv[])
{
    // Create the GUI application
    QGuiApplication app(argc, argv);

    // Create the QML Engine used for exposing QML to C++
    QQmlApplicationEngine engine;

    // Create a QUrl object that contains the path to where the application is stored
    QUrl appPath(QString("%1").arg(app.applicationDirPath()));

    // Create an object in QML that holds the value of a C++ object
    engine.rootContext()->setContextProperty("appPath", appPath);

    // the path to the movies directory
    QUrl moviesPath;
    // Populates a list of strings with the standardized path to a specific path enum (use F1 for available paths)
    const QStringList moviesLocation = QStandardPaths::standardLocations(QStandardPaths::MoviesLocation);

    // Handles case of list being empty
    if(moviesLocation.isEmpty()){
        moviesPath = appPath.resolved(QUrl("/"));
    }else{
        moviesPath = QString("%1").arg(moviesLocation.first());
    }
    // Sets QML property to value of moviesPath
    engine.rootContext()->setContextProperty("moviesPath", moviesPath);





    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

