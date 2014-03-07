@angular.module("arkh", [
  "ui.bootstrap"
  "restangular"
]).config [
  "RestangularProvider"
  (RestangularProvider) ->
    RestangularProvider.setRestangularFields id: "_id"
    return RestangularProvider.setBaseUrl("/api/v1")
]
@TypistCtrl = ($scope, Restangular) ->
    s = $scope
    restng = Restangular
    s.blurbs =
        left: "1 East Main Street - American Fork, Utah\nBeginning in April We Will Be Moving To 185 W Main Street, American Fork, \n801.756.6602"
        right: "American Fork, Highland, Alpine, Pleasant Grove, Lindon, Orem, Provo Springville, Spanish Fork, Mapleton, Lehi , Draper/Sandy Area, Cedar Hills"

    s.categories = [
        "Seasonal"
        "Just Because"
        "New Baby"
        "Best Selling"
        "Sympathy"
        "Casket Sprays"
        "Roses"
        "Daisies"
        "Candy"
        "Balloons"
        "Stuffed Animals"
        "Gift Baskets"
        "Plants"
        "Birthday"
        "Anniversary"
        "Coupons & Specials"
        "Get Well"
        "Corsages"
        "Boutonnieres"
    ]
    s.menu = [
        "Seasonal"
        "Just Because"
        "New Baby"
        "Best Selling"
        "Sympathy"
        "Casket Sprays"
        "Roses"
    ]
    s.slides = []

    for m in s.menu
        s.slides.push
          text: "Blah blah blah"
          title: m
          image: "http://placekitten.com/1200/500"

  s.setSlide = (idx) ->
    alert idx
    s.slides[idx].active = true