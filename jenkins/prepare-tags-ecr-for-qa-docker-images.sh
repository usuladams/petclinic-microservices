#!/bin/bash
MVN_VERSION=sh(script:". ${WORKSPACE}/spring-petclinic-admin-server/target/maven-archiver/pom.properties && echo $version", returnStdout:true).trim()
env.IMAGE_TAG_ADMIN_SERVER="${ECR_REGISTRY}/${APP_REPO_NAME}:admin-server-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:". ${WORKSPACE}/spring-petclinic-api-gateway/target/maven-archiver/pom.properties && echo $version", returnStdout:true).trim()
env.IMAGE_TAG_API_GATEWAY="${ECR_REGISTRY}/${APP_REPO_NAME}:api-gateway-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-config-server/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_CONFIG_SERVER="${ECR_REGISTRY}/${APP_REPO_NAME}:config-server-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-customers-service/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_CUSTOMERS_SERVICE="${ECR_REGISTRY}/${APP_REPO_NAME}:customers-service-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-discovery-server/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_DISCOVERY_SERVER="${ECR_REGISTRY}/${APP_REPO_NAME}:discovery-server-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-hystrix-dashboard/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_HYSTRIX_DASHBOARD="${ECR_REGISTRY}/${APP_REPO_NAME}:hystrix-dashboard-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-vets-service/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_VETS_SERVICE="${ECR_REGISTRY}/${APP_REPO_NAME}:vets-service-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
MVN_VERSION=sh(script:'''. ${WORKSPACE}/spring-petclinic-visits-service/target/maven-archiver/pom.properties && echo $version''', returnStdout:true).trim()
env.IMAGE_TAG_VISITS_SERVICE="${ECR_REGISTRY}/${APP_REPO_NAME}:visits-service-qa-v${MVN_VERSION}-b${BUILD_NUMBER}"
env.IMAGE_TAG_GRAFANA_SERVICE="${ECR_REGISTRY}/${APP_REPO_NAME}:grafana-service"
env.IMAGE_TAG_PROMETHEUS_SERVICE="${ECR_REGISTRY}/${APP_REPO_NAME}:prometheus-service"