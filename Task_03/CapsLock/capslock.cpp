#include "capslock.h"

CapsLock::CapsLock(QObject *parent)
    : QObject{parent}, _capsState(false), _capsFile("/sys/class/leds/input1::capslock/brightness")
{
    char capsInitState = 0;

    // _capsFile.setFileName("/sys/class/leds/input1::capslock/brightness");
    if (!_capsFile.open(QFile::ReadWrite | QFile::Text))
    {
        return;
    }
    if (!_capsFile.getChar(&capsInitState))
    {
        return;
    }
    else
    {
        _capsFile.close();
    }

    _capsState = (capsInitState == '1') ? true : false;

    if (_capsState != false)
    {
        emit capsStateChanged(_capsState);
    }
}

CapsLock::~CapsLock()
{
}

void CapsLock::setCapsState(bool state)
{
    const char *capsCurrState = (state == true) ? "1" : "0";

    if (!_capsFile.open(QFile::ReadWrite | QFile::Text))
    {
        return;
    }
    if (!_capsFile.write(capsCurrState))
    {
        return;
    }
    else
    {
        _capsFile.close();
    }

    if (state != _capsState)
    {
        _capsState = state;
        emit capsStateChanged(_capsState);
    }

}

bool CapsLock::capsState()
{
    return _capsState;
}
