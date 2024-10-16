#include "ButtonAction.h"

#include "pipewire/pipewire.h"
#include <QDebug>

ButtonAction::ButtonAction(QObject *parent)
    : QObject{parent}
{}

void ButtonAction::doSomething(const QString &actionName)
{
    qInfo() << actionName;
    qInfo() << "Compiled with libpipewire: "
            << pw_get_headers_version()
            << " - Linked with libpipewire: "
            << pw_get_library_version();
}

void ButtonAction::setColor(const QString &color)
{
    if (mColor != color)  {
        mColor = color;
        emit colorChanged();
    }
}

QString ButtonAction::color()
{
    return mColor;
}
