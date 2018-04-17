/********************************************************************************
** Form generated from reading UI file 'pcd_video_player.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_PCD_VIDEO_PLAYER_H
#define UI_PCD_VIDEO_PLAYER_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QToolButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "QVTKWidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QWidget *verticalLayoutWidget;
    QVBoxLayout *verticalLayout;
    QVTKWidget *qvtkWidget;
    QSlider *indexSlider;
    QWidget *verticalLayoutWidget_2;
    QVBoxLayout *verticalLayout_2;
    QPushButton *selectFilesButton;
    QPushButton *selectFolderButton;
    QFrame *line_2;
    QSpacerItem *verticalSpacer;
    QFrame *line_3;
    QHBoxLayout *horizontalLayout;
    QToolButton *backButton;
    QToolButton *stopButton;
    QToolButton *playButton;
    QToolButton *nextButton;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(800, 600);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        verticalLayoutWidget = new QWidget(centralwidget);
        verticalLayoutWidget->setObjectName(QStringLiteral("verticalLayoutWidget"));
        verticalLayoutWidget->setGeometry(QRect(339, 10, 451, 531));
        verticalLayout = new QVBoxLayout(verticalLayoutWidget);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        qvtkWidget = new QVTKWidget(verticalLayoutWidget);
        qvtkWidget->setObjectName(QStringLiteral("qvtkWidget"));

        verticalLayout->addWidget(qvtkWidget);

        indexSlider = new QSlider(verticalLayoutWidget);
        indexSlider->setObjectName(QStringLiteral("indexSlider"));
        indexSlider->setOrientation(Qt::Horizontal);

        verticalLayout->addWidget(indexSlider);

        verticalLayoutWidget_2 = new QWidget(centralwidget);
        verticalLayoutWidget_2->setObjectName(QStringLiteral("verticalLayoutWidget_2"));
        verticalLayoutWidget_2->setGeometry(QRect(9, 9, 321, 531));
        verticalLayout_2 = new QVBoxLayout(verticalLayoutWidget_2);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        verticalLayout_2->setContentsMargins(0, 0, 0, 0);
        selectFilesButton = new QPushButton(verticalLayoutWidget_2);
        selectFilesButton->setObjectName(QStringLiteral("selectFilesButton"));

        verticalLayout_2->addWidget(selectFilesButton);

        selectFolderButton = new QPushButton(verticalLayoutWidget_2);
        selectFolderButton->setObjectName(QStringLiteral("selectFolderButton"));

        verticalLayout_2->addWidget(selectFolderButton);

        line_2 = new QFrame(verticalLayoutWidget_2);
        line_2->setObjectName(QStringLiteral("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line_2);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer);

        line_3 = new QFrame(verticalLayoutWidget_2);
        line_3->setObjectName(QStringLiteral("line_3"));
        line_3->setFrameShape(QFrame::HLine);
        line_3->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line_3);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        backButton = new QToolButton(verticalLayoutWidget_2);
        backButton->setObjectName(QStringLiteral("backButton"));
        backButton->setArrowType(Qt::LeftArrow);

        horizontalLayout->addWidget(backButton);

        stopButton = new QToolButton(verticalLayoutWidget_2);
        stopButton->setObjectName(QStringLiteral("stopButton"));

        horizontalLayout->addWidget(stopButton);

        playButton = new QToolButton(verticalLayoutWidget_2);
        playButton->setObjectName(QStringLiteral("playButton"));
        playButton->setArrowType(Qt::NoArrow);

        horizontalLayout->addWidget(playButton);

        nextButton = new QToolButton(verticalLayoutWidget_2);
        nextButton->setObjectName(QStringLiteral("nextButton"));
        nextButton->setArrowType(Qt::RightArrow);

        horizontalLayout->addWidget(nextButton);


        verticalLayout_2->addLayout(horizontalLayout);

        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 800, 25));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QStringLiteral("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", 0));
        selectFilesButton->setText(QApplication::translate("MainWindow", "Select PCD Files", 0));
        selectFolderButton->setText(QApplication::translate("MainWindow", "Select Folder", 0));
        backButton->setText(QApplication::translate("MainWindow", "...", 0));
        stopButton->setText(QApplication::translate("MainWindow", "Stop", 0));
        playButton->setText(QApplication::translate("MainWindow", "Play", 0));
        nextButton->setText(QApplication::translate("MainWindow", "...", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_PCD_VIDEO_PLAYER_H
