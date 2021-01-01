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