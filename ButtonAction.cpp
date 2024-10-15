#include "ButtonAction.h"
#include <QDebug>

ButtonAction::ButtonAction(QObject *parent)
    : QObject{parent}
{}

void ButtonAction::doSomething(const QString &actionName)
{
    qInfo() << actionName;
    log << actionName;
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
