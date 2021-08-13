<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Club</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    
    <h1 class="d-flex justify-content-center">{{ $club->club_name }}</h1><br><br>
    <div class="d-flex justify-content-center">
    <button type="button" class="btn btn-primary btn-lg" onclick="location.href='/home/{{ $club->id }}/events';">Events</button>
    </div><br>

    <div class="d-flex justify-content-center">
    <button type="button" class="btn btn-primary btn-lg" onclick="location.href='/home/{{ $club->id }}/members';">Members</button>
    </div>
    
</body>
</html>