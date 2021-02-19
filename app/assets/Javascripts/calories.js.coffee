jQuery ->
  Morris.Line({
    element: 'calories_chart',
    data: $('#calories_chart').data('calories'),
    xkey: 'date'
    ykeys: ['quantity'],
    labels: ['Calories']
  });