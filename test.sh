
dotnet new webapi --use-controllers -o . 
cd TodoApi

dotnet add package Dapr.AspNetCore



builder.Services.AddControllers().AddDapr();


dapr run --app-id controller --dapr-http-port 3500  --app-port 5085 -- dotnet run


@dapr_host=http://localhost:3500
GET {{dapr_host}}/v1.0/invoke/controller/method/WeatherForecast










