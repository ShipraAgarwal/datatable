# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#userTable').dataTable
     processing: true
     serverSide: true
     ajax: $('#userTable').data('source')
     pagingType: 'full_numbers'
     columns: [
     	{data: 'id'}
     	{data: 'name'}
     	{data: 'email'}
     ]