%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<head>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.12/semantic.min.css"></link>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.12/semantic.min.js"></script>
</head>

<body>
<h2><center>Current tasks:</center></h2>
<div class="ui container" style="padding-top: 10px;">
<table class="ui celled table">
<thead>
    <th>ID</th>
    <th>Task</th>
    <th>Change information</th>
    <th>Show information</th>

</thead>

<tbody>
%for i in range (len(rows)):
  <tr>
  %for col in rows[i]:
    <td>{{col}}</td>
  %end
  <td><a href="/edit/{{i+1}}" class="ui button">Edit</a></td>
  <td><a href="/item{{i+1}}" class="ui button">Show</a></td>
  </tr>
%end
</tbody>
<tfoot class="full-width">
    <tr>
        <th colspan="7">
            <a href="/new" class="ui right floated small button">Add a new task to the ToDo list</a>
        </th>
    </tr>
</tfoot>


</table>
</body>