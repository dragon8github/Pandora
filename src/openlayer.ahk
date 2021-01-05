::ol.xyz::
Var =
(
const map = new ol.Map({
    // target
    target: document.getElementById('map'),
    // layer
    layers: [
        new ol.layer.Tile({
            // https://studio.mapbox.com/
            source: new ol.source.XYZ({
                url: 'https://api.mapbox.com/styles/v1/dragon8mapbox/ckjgblqlio0x019qtyttzr83r/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZHJhZ29uOG1hcGJveCIsImEiOiJjanIwZjZ1aWIwNjZ5NDVxbGZlOXYwY2kwIn0.w2vjF9k4LP3w_BN5xgmdlg',
            }),
        }),
    ],
    // view
    view: new ol.View({
        center: [-472202, 7530279],
        zoom: 12,
    }),
})
)
txtit(Var)
return

:?:ol.icon::
:?:ol.style::
:?:ol.img::
:?:ol.image::
Var =
(
let feature = new Feature({
    geometry: new Point([113.877471, 23.104876]),
})

feature.setStyle(
    new Style({
        image: new Icon({
            src: require('@/assets/logo.png'),
            crossOrigin: '',
            anchor: [0.5, 0.5],
            scale: [0.1, 0.1],
            anchorXUnits: 'fraction',
            anchorYUnits: 'pixels',
        }),
    })
`)

layer.getSource().addFeature(feature)
)
txtit(Var)
return