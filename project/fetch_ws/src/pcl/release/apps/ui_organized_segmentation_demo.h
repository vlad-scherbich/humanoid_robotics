/********************************************************************************
** Form generated from reading UI file 'organized_segmentation_demo.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ORGANIZED_SEGMENTATION_DEMO_H
#define UI_ORGANIZED_SEGMENTATION_DEMO_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>
#include "QVTKWidget.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGridLayout *gridLayout;
    QVTKWidget *qvtk_widget;
    QVBoxLayout *verticalLayout_2;
    QPushButton *captureButton;
    QFrame *line_2;
    QLabel *label1;
    QPushButton *planeComparatorButton;
    QPushButton *euclideanComparatorButton;
    QPushButton *rgbComparatorButton;
    QPushButton *edgeAwareComparatorButton;
    QFrame *line;
    QLabel *label;
    QPushButton *displayCurvatureButton;
    QPushButton *displayNormalsButton;
    QPushButton *displayDistanceMapButton;
    QFrame *line_3;
    QLabel *label_2;
    QPushButton *disableRefinementButton;
    QPushButton *planarRefinementButton;
    QFrame *line_4;
    QLabel *label_3;
    QPushButton *disableClusteringButton;
    QPushButton *euclideanClusteringButton;
    QSpacerItem *verticalSpacer;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(1178, 953);
        QSizePolicy sizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy.setHorizontalStretch(1);
        sizePolicy.setVerticalStretch(1);
        sizePolicy.setHeightForWidth(MainWindow->sizePolicy().hasHeightForWidth());
        MainWindow->setSizePolicy(sizePolicy);
        MainWindow->setIconSize(QSize(22, 22));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        centralwidget->setEnabled(true);
        QSizePolicy sizePolicy1(QSizePolicy::Expanding, QSizePolicy::Expanding);
        sizePolicy1.setHorizontalStretch(255);
        sizePolicy1.setVerticalStretch(255);
        sizePolicy1.setHeightForWidth(centralwidget->sizePolicy().hasHeightForWidth());
        centralwidget->setSizePolicy(sizePolicy1);
        gridLayout = new QGridLayout(centralwidget);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        qvtk_widget = new QVTKWidget(centralwidget);
        qvtk_widget->setObjectName(QStringLiteral("qvtk_widget"));
        sizePolicy1.setHeightForWidth(qvtk_widget->sizePolicy().hasHeightForWidth());
        qvtk_widget->setSizePolicy(sizePolicy1);
        qvtk_widget->setStyleSheet(QStringLiteral("background-color: rgb(0, 0, 0);"));

        gridLayout->addWidget(qvtk_widget, 0, 3, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(0);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        captureButton = new QPushButton(centralwidget);
        captureButton->setObjectName(QStringLiteral("captureButton"));

        verticalLayout_2->addWidget(captureButton);

        line_2 = new QFrame(centralwidget);
        line_2->setObjectName(QStringLiteral("line_2"));
        line_2->setFrameShape(QFrame::HLine);
        line_2->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line_2);

        label1 = new QLabel(centralwidget);
        label1->setObjectName(QStringLiteral("label1"));

        verticalLayout_2->addWidget(label1);

        planeComparatorButton = new QPushButton(centralwidget);
        planeComparatorButton->setObjectName(QStringLiteral("planeComparatorButton"));

        verticalLayout_2->addWidget(planeComparatorButton);

        euclideanComparatorButton = new QPushButton(centralwidget);
        euclideanComparatorButton->setObjectName(QStringLiteral("euclideanComparatorButton"));

        verticalLayout_2->addWidget(euclideanComparatorButton);

        rgbComparatorButton = new QPushButton(centralwidget);
        rgbComparatorButton->setObjectName(QStringLiteral("rgbComparatorButton"));

        verticalLayout_2->addWidget(rgbComparatorButton);

        edgeAwareComparatorButton = new QPushButton(centralwidget);
        edgeAwareComparatorButton->setObjectName(QStringLiteral("edgeAwareComparatorButton"));

        verticalLayout_2->addWidget(edgeAwareComparatorButton);

        line = new QFrame(centralwidget);
        line->setObjectName(QStringLiteral("line"));
        line->setFrameShape(QFrame::HLine);
        line->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line);

        label = new QLabel(centralwidget);
        label->setObjectName(QStringLiteral("label"));

        verticalLayout_2->addWidget(label);

        displayCurvatureButton = new QPushButton(centralwidget);
        displayCurvatureButton->setObjectName(QStringLiteral("displayCurvatureButton"));

        verticalLayout_2->addWidget(displayCurvatureButton);

        displayNormalsButton = new QPushButton(centralwidget);
        displayNormalsButton->setObjectName(QStringLiteral("displayNormalsButton"));

        verticalLayout_2->addWidget(displayNormalsButton);

        displayDistanceMapButton = new QPushButton(centralwidget);
        displayDistanceMapButton->setObjectName(QStringLiteral("displayDistanceMapButton"));

        verticalLayout_2->addWidget(displayDistanceMapButton);

        line_3 = new QFrame(centralwidget);
        line_3->setObjectName(QStringLiteral("line_3"));
        line_3->setFrameShape(QFrame::HLine);
        line_3->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line_3);

        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QStringLiteral("label_2"));

        verticalLayout_2->addWidget(label_2);

        disableRefinementButton = new QPushButton(centralwidget);
        disableRefinementButton->setObjectName(QStringLiteral("disableRefinementButton"));

        verticalLayout_2->addWidget(disableRefinementButton);

        planarRefinementButton = new QPushButton(centralwidget);
        planarRefinementButton->setObjectName(QStringLiteral("planarRefinementButton"));

        verticalLayout_2->addWidget(planarRefinementButton);

        line_4 = new QFrame(centralwidget);
        line_4->setObjectName(QStringLiteral("line_4"));
        line_4->setFrameShape(QFrame::HLine);
        line_4->setFrameShadow(QFrame::Sunken);

        verticalLayout_2->addWidget(line_4);

        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QStringLiteral("label_3"));

        verticalLayout_2->addWidget(label_3);

        disableClusteringButton = new QPushButton(centralwidget);
        disableClusteringButton->setObjectName(QStringLiteral("disableClusteringButton"));

        verticalLayout_2->addWidget(disableClusteringButton);

        euclideanClusteringButton = new QPushButton(centralwidget);
        euclideanClusteringButton->setObjectName(QStringLiteral("euclideanClusteringButton"));

        verticalLayout_2->addWidget(euclideanClusteringButton);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout_2->addItem(verticalSpacer);


        gridLayout->addLayout(verticalLayout_2, 0, 5, 1, 1);

        MainWindow->setCentralWidget(centralwidget);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QString());
        captureButton->setText(QApplication::translate("MainWindow", "Toggle Capture", 0));
        label1->setText(QApplication::translate("MainWindow", "Comparator Selection", 0));
        planeComparatorButton->setText(QApplication::translate("MainWindow", "Plane Comparator", 0));
        euclideanComparatorButton->setText(QApplication::translate("MainWindow", "Euclidean Comparator", 0));
        rgbComparatorButton->setText(QApplication::translate("MainWindow", "RGB Comparator", 0));
        edgeAwareComparatorButton->setText(QApplication::translate("MainWindow", "Edge Aware Comparator", 0));
        label->setText(QApplication::translate("MainWindow", "Visualization Options", 0));
        displayCurvatureButton->setText(QApplication::translate("MainWindow", "Display Curvature", 0));
        displayNormalsButton->setText(QApplication::translate("MainWindow", "Display Normals", 0));
        displayDistanceMapButton->setText(QApplication::translate("MainWindow", "Display Distance Map", 0));
        label_2->setText(QApplication::translate("MainWindow", "Refinement Options", 0));
        disableRefinementButton->setText(QApplication::translate("MainWindow", "Disable Refinement", 0));
        planarRefinementButton->setText(QApplication::translate("MainWindow", "Planar Refinement", 0));
        label_3->setText(QApplication::translate("MainWindow", "Clustering", 0));
        disableClusteringButton->setText(QApplication::translate("MainWindow", "Disable Clustering", 0));
        euclideanClusteringButton->setText(QApplication::translate("MainWindow", "Euclidean Clustering", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ORGANIZED_SEGMENTATION_DEMO_H
