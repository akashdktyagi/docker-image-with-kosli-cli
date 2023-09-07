# docker-image-with-kosli-cli

Use this to run kosli commands in ur CI CD pipeline

```yml
kosli-init:
  stage: init
  image:
    name: docker.io/333743/kosli-cli:latest
  script:
    # - kosli create flow ${KOSLI_FLOW_NAME} --description ${KOSLI_FLOW_DESCRIPTION}
    # - kosli create environment ${KOSLI_ENV_NAME} --type ${KOSLI_ENV_TYPE} --description ${KOSLI_ENV_DESCRIPTION}
    - kosli login --api-token ${KOSLI_API_TOKEN} --org ${KOSLI_ORG}
    - kosli create flow my-flask-api --description "my flask api flow" --template artifact,sast,code-coverage,container-scan
    - kosli list flows 
    - kosli create environment my-flask-api-env --type docker --description "My Flask API kosli env" 
    - kosli list environments

```
