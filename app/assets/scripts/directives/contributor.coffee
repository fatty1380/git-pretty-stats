'use strict'

angular.module('gitPrettyStats')
  .directive 'gpsContributor', ($timeout) ->
    restrict: 'E'
    replace: true
    templateUrl: 'templates/contributor.html'
    scope:
      contributor: '='
    link: (scope, iElement, iAttrs) ->
      $timeout(->
        iElement.find('.chart').highcharts
          chart:
            type: "areaspline"
            zoomType: "x"
          title:
            text: ""
          plotOptions:
            series:
              lineWidth: 1
              marker:
                enabled: false
          xAxis:
            categories: scope.contributor.data.x
            tickInterval: parseInt(scope.contributor.data.x.length / 10)
            labels:
              rotation: -45
              y: 35
          yAxis:
            title:
              text: ""
          series: [
            name: "Commits"
            data: scope.contributor.data.y
          ]
      , 50)

