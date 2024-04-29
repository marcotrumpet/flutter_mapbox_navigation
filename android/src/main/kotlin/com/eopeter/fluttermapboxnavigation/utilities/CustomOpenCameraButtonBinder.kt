package com.eopeter.fluttermapboxnavigation.utilities

import android.view.Gravity
import android.view.ViewGroup
import com.eopeter.fluttermapboxnavigation.models.MapBoxEvents
import com.mapbox.navigation.core.MapboxNavigation
import com.mapbox.navigation.core.lifecycle.MapboxNavigationObserver
import com.mapbox.navigation.dropin.R
import com.mapbox.navigation.ui.base.lifecycle.UIBinder
import com.mapbox.navigation.ui.base.lifecycle.UIComponent
import com.mapbox.navigation.ui.base.view.MapboxExtendableButton
import com.mapbox.navigation.ui.maps.camera.view.MapboxRecenterButton
import com.mapbox.navigation.ui.maps.camera.view.MapboxRouteOverviewButton
import com.mapbox.navigation.ui.voice.view.MapboxSoundButton

class CustomOpenCameraButtonBinder(
) : UIBinder {
    override fun bind(viewGroup: ViewGroup): MapboxNavigationObserver {
        val openCameraButton = MapboxExtendableButton(
            viewGroup.context,
            null,
            R.style.MapboxStyleCameraModeButton_Circle
        )
        openCameraButton.iconImage.setImageResource(android.R.drawable.ic_menu_camera)
        openCameraButton.foregroundGravity = Gravity.CENTER

        viewGroup.removeAllViews()
        viewGroup.addView(openCameraButton)

        return object : UIComponent() {
            override fun onAttached(mapboxNavigation: MapboxNavigation) {
                super.onAttached(mapboxNavigation)
                openCameraButton.setOnClickListener {
                    PluginUtilities.sendEvent(MapBoxEvents.OPEN_CAMERA)
                }
            }
        }
    }
}