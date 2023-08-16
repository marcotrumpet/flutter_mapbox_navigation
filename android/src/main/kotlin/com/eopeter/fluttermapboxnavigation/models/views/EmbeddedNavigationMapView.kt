package com.eopeter.fluttermapboxnavigation.models.views

import android.app.Activity
import android.content.Context
import android.net.Uri
import android.view.View
import com.eopeter.fluttermapboxnavigation.FlutterMapboxNavigationPlugin
import com.eopeter.fluttermapboxnavigation.TurnByTurn
import com.eopeter.fluttermapboxnavigation.databinding.NavigationActivityBinding
import com.eopeter.fluttermapboxnavigation.models.MapBoxEvents
import com.eopeter.fluttermapboxnavigation.utilities.PluginUtilities
import com.google.android.material.bottomsheet.BottomSheetBehavior
import com.mapbox.geojson.Point
import com.mapbox.maps.MapView
import com.mapbox.maps.plugin.gestures.OnMapClickListener
import com.mapbox.maps.plugin.gestures.gestures
import com.mapbox.navigation.dropin.map.MapViewObserver
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView
import org.json.JSONObject

class EmbeddedNavigationMapView(
    context: Context,
    activity: Activity,
    binding: NavigationActivityBinding,
    binaryMessenger: BinaryMessenger,
    vId: Int,
    args: Any?,
    accessToken: String
) : PlatformView, TurnByTurn(context, activity, binding, accessToken) {
    private val viewId: Int = vId
    private val messenger: BinaryMessenger = binaryMessenger
    private val arguments = args as Map<*, *>

    override fun initFlutterChannelHandlers() {
        methodChannel = MethodChannel(messenger, "flutter_mapbox_navigation/${viewId}")
        eventChannel = EventChannel(messenger, "flutter_mapbox_navigation/${viewId}/events")
        super.initFlutterChannelHandlers()
    }

    open fun initialize() {
        initFlutterChannelHandlers()
        initNavigation()

        if(!(this.arguments["longPressDestinationEnabled"] as Boolean)) {
            this.binding.navigationView.customizeViewOptions {
                enableMapLongClickIntercept = false;
            }
        }

        if((arguments?.get("showInfoPanel") as? Boolean == false)) {
            this.binding.navigationView.customizeViewOptions {
                infoPanelForcedState = BottomSheetBehavior.STATE_HIDDEN
            }
        }

        this.binding.navigationView.customizeViewOptions {
            showSpeedLimit = arguments["showSpeedLimit"] as? Boolean
            showRecenterActionButton = arguments["showRecenterActionButton"] as? Boolean
            showRoadName = arguments["showRoadName"] as? Boolean
            showCompassActionButton = arguments["showCompassActionButton"] as? Boolean
            showActionButtons = arguments["showActionButtons"] as? Boolean
        }

        if((this.arguments["enableOnMapTapCallback"] as Boolean)) {
            this.binding.navigationView.registerMapObserver(onMapClick)
        }

        FlutterMapboxNavigationPlugin.enableOnMapTapCallback = this.arguments["enableOnMapTapCallback"] as Boolean
        FlutterMapboxNavigationPlugin.customPinPath = this.arguments["customPinPath"] as? String
        this.binding.navigationView.registerMapObserver(mapViewObserver);
    }

    override fun getView(): View {
        return binding.root
    }

    override fun dispose() {
        if((this.arguments?.get("enableOnMapTapCallback") as Boolean)) {
            this.binding.navigationView.unregisterMapObserver(onMapClick)
        }
        this.binding.navigationView.unregisterMapObserver(mapViewObserver);
        unregisterObservers()
    }

    /**
     * Notifies with attach and detach events on [MapView]
     */
    private val onMapClick = object : MapViewObserver(), OnMapClickListener {

        override fun onAttached(mapView: MapView) {
            mapView.gestures.addOnMapClickListener(this)
        }

        override fun onDetached(mapView: MapView) {
            mapView.gestures.removeOnMapClickListener(this)
        }

        override fun onMapClick(point: Point): Boolean {
            if (!FlutterMapboxNavigationPlugin.enableOnMapTapCallback) {
                return false
            }

            var waypoint = mapOf<String, String>(
                Pair("latitude", point.latitude().toString()),
                Pair("longitude", point.longitude().toString())
            )
            PluginUtilities.sendEvent(MapBoxEvents.ON_MAP_TAP, JSONObject(waypoint).toString())
            return false
        }
    }

}
