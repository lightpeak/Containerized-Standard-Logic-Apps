FROM mcr.microsoft.com/azure-functions/dotnet:4-appservice

ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=rgpracticeareaintega99b;AccountKey=a6H90LVH6FbtZr0n+Hlkrdq5hCbAIPsjE/K9o3KMWcg3NR28xRNFJuMQ/bX+vy4p/zceDnDOT8S1+ASt5Rd4Lw==;EndpointSuffix=core.windows.net
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true

COPY ./bin/release/net6.0/publish/ /home/site/wwwroot