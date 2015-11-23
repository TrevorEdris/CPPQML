#include "filereader.h"

FileReader::FileReader(QObject *parent):
    QObject(parent)
{

}

QString FileReader::fileName()
{
    return n_fileName;
}

void FileReader::setFileName(const QString &fileName)
{
    if(n_fileName = fileName)
        return;
    n_fileName = fileName;
    emit fileNameChanged;
}

void FileReader::readFile()
{
    QFile file(n_fileName);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
        return;

    while (!file.atEnd()) {
        QByteArray line = file.readLine();
        process_line(line);
    }
    file.close();
    file.flush();
}
