# gcloud-sdk-service-account

Google Cloud SDK with service account authentication

`gcloud, gsutil, bq` are all available on path see [cloud-sdk image](https://hub.docker.com/r/google/cloud-sdk/) for more infos.

# Usage

Execute commands with a local `config.json` service account

    docker run --rm -v config.json:/config.json m0xx/gcloud-sdk-service-account gsutil ls gs://bucket
    
Execute commands with config from an environment variable

    TEMP_CONFIG=$(<config.json)
    docker run --rm -e SA_KEY="$TEMP_CONFIG" m0xx/gcloud-sdk-service-account gsutil ls gs://bucket