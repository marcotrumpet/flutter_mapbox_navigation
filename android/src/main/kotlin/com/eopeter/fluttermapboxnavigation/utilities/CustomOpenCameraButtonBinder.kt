package com.eopeter.fluttermapboxnavigation.utilities

import android.content.res.ColorStateList
import android.graphics.Color
import android.view.Gravity
import android.view.ViewGroup
import com.eopeter.fluttermapboxnavigation.models.MapBoxEvents
import com.mapbox.navigation.core.MapboxNavigation
import com.mapbox.navigation.core.lifecycle.MapboxNavigationObserver
import com.mapbox.navigation.dropin.R
import com.mapbox.navigation.dropin.internal.extensions.updateMargins
import com.mapbox.navigation.ui.base.lifecycle.UIBinder
import com.mapbox.navigation.ui.base.lifecycle.UIComponent
import com.mapbox.navigation.ui.base.view.MapboxExtendableButton

class CustomOpenCameraButtonBinder(
    private val nav: MapboxNavigation
) : UIBinder {
    override fun bind(viewGroup: ViewGroup): MapboxNavigationObserver {
        val button = MapboxExtendableButton(
            viewGroup.context,
            null,
            R.style.MapboxStyleCameraModeButton_Circle
        )
        button.iconImage.setImageResource(android.R.drawable.ic_menu_camera)
        button.iconImage.imageTintList = ColorStateList.valueOf(Color.WHITE)
        viewGroup.removeAllViews()
        viewGroup.addView(button)
        button.foregroundGravity = Gravity.CENTER

        return object : UIComponent() {
            override fun onAttached(mapboxNavigation: MapboxNavigation) {
                super.onAttached(mapboxNavigation)
                button.setOnClickListener {
                    PluginUtilities.sendEvent(MapBoxEvents.OPEN_CAMERA)
                }
            }
        }
    }
}