#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>
#include "ButtonAction.h"
#include "pipewire/pipewire.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    pw_init(&argc, &argv);

    qmlRegisterType<ButtonAction>("ButtonAction", 1, 0, "ButtonAction");

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("music_test", "Main");

    return app.exec();
}
