FROM mcr.microsoft.com/azure-functions/dotnet:4-appservice

ENV AzureWebJobsStorage=XXXX
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true

COPY ./bin/release/net6.0/publish/ /home/site/wwwroot