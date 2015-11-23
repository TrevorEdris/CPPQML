#ifndef FILEREADER_H
#define FILEREADER_H

#include <QObject>
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <QStringList>

class FileReader : public QObject
{
    Q_OBJECT
public:
    explicit FileReader(QObject *parent = 0);

    Q_PROPERTY(QString fileName READ fileName WRITE setFileName NOTIFY fileNameChanged)

    // getters
    QString fileName();

    // setters
    void setFileName(const QString &fileName);

    Q_INVOKABLE void readFile();
    // QFile file("in.txt");

signals:
    void fileNameChanged();

private:
    QString n_fileName;
};

#endif // FILEREADER_H
