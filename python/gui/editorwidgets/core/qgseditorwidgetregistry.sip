/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/editorwidgets/core/qgseditorwidgetregistry.h                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsEditorWidgetRegistry : QObject
{
%Docstring
 This class manages all known edit widget factories.

 QgsEditorWidgetRegistry is not usually directly created, but rather accessed through
 QgsGui.editorWidgetRegistry().
%End

%TypeHeaderCode
#include "qgseditorwidgetregistry.h"
%End
  public:

    QgsEditorWidgetRegistry();
%Docstring
 Constructor for QgsEditorWidgetRegistry. QgsEditorWidgetRegistry is not usually directly created, but rather accessed through
 QgsGui.editorWidgetRegistry().
%End

    void initEditors( QgsMapCanvas *mapCanvas = 0, QgsMessageBar *messageBar = 0 );
%Docstring
 Registers all the default widgets.
 Only call this once on startup of an application.

 \param mapCanvas  Specify a map canvas with which the widgets (relation reference) work
 \param messageBar Specify a message bar on which messages by widgets will be shown while working with the map canvas

.. versionadded:: 2.8
.. note::

   Not required for plugins, the QGIS application does that already
%End

    ~QgsEditorWidgetRegistry();
%Docstring
 Destructor

 Deletes all the registered widgets
%End

    QgsEditorWidgetSetup findBest( const QgsVectorLayer *vl, const QString &fieldName ) const;
%Docstring
 Find the best editor widget and its configuration for a given field.

 \param vl        The vector layer for which this widget will be created
 \param fieldName The field name on the specified layer for which this widget will be created

 :return: The id of the widget type to use and its config
 :rtype: QgsEditorWidgetSetup
%End

    QgsEditorWidgetWrapper *create( const QString &widgetId,
                                    QgsVectorLayer *vl,
                                    int fieldIdx,
                                    const QVariantMap &config,
                                    QWidget *editor,
                                    QWidget *parent /TransferThis/ ) /Factory/;

%Docstring
 Create an attribute editor widget wrapper of a given type for a given field.
 The editor may be NULL if you want the widget wrapper to create a default widget.

 \param widgetId  The id of the widget type to create an attribute editor for
 \param vl        The vector layer for which this widget will be created
 \param fieldIdx  The field index on the specified layer for which this widget will be created
 \param config    A configuration which should be used for the widget creation
 \param editor    An editor widget which will be used instead of an autocreated widget
 \param parent    The parent which will be used for the created wrapper and the created widget
 \param context   The editor context (not available in Python bindings)

 :return: A new widget wrapper
 :rtype: QgsEditorWidgetWrapper
%End

    QgsEditorWidgetWrapper *create( QgsVectorLayer *vl,
                                    int fieldIdx,
                                    QWidget *editor,
                                    QWidget *parent /TransferThis/ ) /Factory/;

%Docstring
 Create an attribute editor widget wrapper of the best type for a given field.
 The editor may be NULL if you want the widget wrapper to create a default widget.

 \param vl        The vector layer for which this widget will be created
 \param fieldIdx  The field index on the specified layer for which this widget will be created
 \param editor    An editor widget which will be used instead of an autocreated widget
 \param parent    The parent which will be used for the created wrapper and the created widget
 \param context   The editor context (not available in Python bindings)

 :return: A new widget wrapper
 :rtype: QgsEditorWidgetWrapper
%End

    QgsSearchWidgetWrapper *createSearchWidget( const QString &widgetId,
        QgsVectorLayer *vl,
        int fieldIdx,
        const QVariantMap &config,
        QWidget *parent /TransferThis/ ) /Factory/;

%Docstring
 :rtype: QgsSearchWidgetWrapper
%End

    QgsEditorConfigWidget *createConfigWidget( const QString &widgetId, QgsVectorLayer *vl, int fieldIdx, QWidget *parent /TransferThis/ ) /Factory/;
%Docstring
 Creates a configuration widget

 \param widgetId  The id of the widget type to create a configuration widget for
 \param vl        The vector layer for which this widget will be created
 \param fieldIdx  The field index on the specified layer for which this widget will be created
 \param parent    The parent widget for the created widget

 :return: A new configuration widget
 :rtype: QgsEditorConfigWidget
%End

    QString name( const QString &widgetId );
%Docstring
 Get the human readable name for a widget type

 \param widgetId The widget type to get the name for

 :return: A human readable name
 :rtype: str
%End

    QMap<QString, QgsEditorWidgetFactory *> factories();
%Docstring
 Get access to all registered factories

 :return: All ids and factories
 :rtype: QMap<str, QgsEditorWidgetFactory *>
%End

    QgsEditorWidgetFactory *factory( const QString &widgetId );
%Docstring
 Get a factory for the given widget type id.

 :return: A factory or Null if not existent
 :rtype: QgsEditorWidgetFactory
%End

    bool registerWidget( const QString &widgetId, QgsEditorWidgetFactory *widgetFactory /Transfer/ );
%Docstring
 Register a new widget factory with the given id

 \param widgetId      The id which will be used later to refer to this widget type
 \param widgetFactory The factory which will create this widget type

 :return: true, if successful, false, if the widgetId is already in use or widgetFactory is NULL
 :rtype: bool
%End

    void registerAutoConfPlugin( QgsEditorWidgetAutoConfPlugin *plugin );
%Docstring
 Register a new auto-conf plugin.

 \param plugin The plugin (ownership is transferred)
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/editorwidgets/core/qgseditorwidgetregistry.h                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
