package io.github.aldrinzigmundv.librum

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider

class QuoteWidgetProvider : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: android.content.SharedPreferences
    ) {
        for (appWidgetId in appWidgetIds) {
            val views = RemoteViews(context.packageName, R.layout.widget_layout)

            val quoteText = widgetData.getString("quote_text", "Loading Quote...")
            val quoteVerse = widgetData.getString("quote_verse", "")
            val quoteFormatted = widgetData.getString("quote_formatted", "")

            views.setTextViewText(R.id.quote_text, quoteText)
            views.setTextViewText(R.id.quote_verse, quoteVerse)

            // Intent to refresh quote via Flutter background callback
            val backgroundIntent = HomeWidgetBackgroundIntent.getBroadcast(
                context,
                Uri.parse("myAppWidget://update_widget")
            )
            views.setOnClickPendingIntent(R.id.btn_recycle, backgroundIntent)

            if (quoteText == "Loading Quote...") {
                backgroundIntent.send()
            }

            // Intent to copy quote natively
            val copyIntent = Intent(context, CopyActivity::class.java).apply {
                putExtra("quote_formatted", quoteFormatted)
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
            }
            
            // For Android 12+, we need to add mutability flags for PendingIntent
            val flags = if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.S) {
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE
            } else {
                PendingIntent.FLAG_UPDATE_CURRENT
            }
            val pendingCopyIntent = PendingIntent.getActivity(context, 0, copyIntent, flags)
            views.setOnClickPendingIntent(R.id.btn_copy, pendingCopyIntent)

            // Open app on click
            val launchIntent = HomeWidgetLaunchIntent.getActivity(
                context,
                MainActivity::class.java
            )
            views.setOnClickPendingIntent(R.id.quote_text, launchIntent)

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}
