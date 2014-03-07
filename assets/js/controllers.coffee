@angular.module('arkh', [
    'ui.bootstrap'
    'restangular'
    'angularSpinner'
    ]
)
    .config(
        [
            'RestangularProvider'
            (RestangularProvider) ->
                RestangularProvider.setRestangularFields
                    id: "_id"
                RestangularProvider.setBaseUrl '/api/v1'
        ]
    )

@ArkhCtrl = ($scope, Restangular) ->
    s = $scope
    restng = Restangular
