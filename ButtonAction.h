#ifndef BUTTONACTION_H
#define BUTTONACTION_H

#include <QObject>
#include <QDebug>

#define log qDebug() << __LINE__ << __PRETTY_FUNCTION__

class ButtonAction : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString color READ color WRITE setColor NOTIFY colorChanged)
public:
    explicit ButtonAction(QObject *parent = nullptr);
    Q_INVOKABLE void doSomething(const QString& actionName);

    void setColor(const QString& color);
    QString color();

signals:
    void colorChanged();

private:
    QString mColor = "red";
};

#endif // BUTTONACTION_H
