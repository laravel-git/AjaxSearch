<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <title>Document</title>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Customers Info</h1>
      <form>
          @csrf
          <div class="form-group">
              <input type="text" id="search" class="form-control" name="search">
          </div>
      </form>

        <table class="table table-bordered">
             <thead>
                    <tr>
                        <th>ID</th>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Email</th>
                        <th>Phone</th>
                    </tr>
             </thead>
            <tbody>
                    @foreach($customers as $customer)
                      <tr>
                          <td>{{$customer->id}}</td>
                          <td>{{$customer->firstname}}</td>
                          <td>{{$customer->lasttname}}</td>
                          <td>{{$customer->email}}</td>
                          <td>{{$customer->phone}}</td>
                      </tr>
                    @endforeach
            </tbody>
        </table>
    </div>
<script src="{{asset('js/app.js')}}"></script>
<script src="{{asset('js/jquery.min.js')}}"></script>
<script type="text/javascript">
    $('#search').on('keyup',function (){
       $value = $(this).val();
       $.ajax({
             type: 'get',
             url:  '{{URL::to('search')}}',
             data: {'search':$value},
             success:function(data){
                $('tbody').html(data);
             }
           }
       );
    });
</script>
</body>
</html>