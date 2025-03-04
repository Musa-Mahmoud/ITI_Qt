#ifndef CAPSLOCK_H
#define CAPSLOCK_H

#include <QObject>
#include <QFile>

class CapsLock : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool capsState READ capsState WRITE setCapsState NOTIFY capsStateChanged FINAL)

public:
    explicit CapsLock(QObject *parent = nullptr);
    ~CapsLock();

signals:
    void capsStateChanged(bool state);

public slots:
    void setCapsState(bool state);
    bool capsState();

private:
    bool _capsState;
    QFile _capsFile;
};

#endif // CAPSLOCK_H
