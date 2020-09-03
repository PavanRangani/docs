## Jenkins Jobs

### Build-{service}
- Create a new Jenkins job from [build-server](https://athena-jenkins.clariusgroup.com/view/athena-build/job/build-server/)
    - Job name shall be build-{service-name} e.g. build-`my-service`
    - Group: `athena-build`
- Update job
    - Git repository
        - Source Code Management > Git > Repositories > Repository URL
        - Update service name in build script.

        ```bash
        bash $WORKSPACE/docker-build/build.sh -d $WORKSPACE -i  athena/my-service -t ${TAG}
        bash $WORKSPACE/docker-build/deploy.sh -i athena/my-service:${TAG} -r ${DOCKER_REPO}/athena/my-service -t ${TAG}
        ```

### Deploy-service
- Edit [deploy-service](https://athena-jenkins.clariusgroup.com/view/athena-common/job/deploy-service/) job as following:
    - Add service name (`my-service`) into the values of choice parameter `SERVICE_NAME`.
    - Update shell script (for each declared environment).
      Post Build Actions > Send Build artifact over SSH `declare -A serviceVersionVarNamesMap=`
      ```bash
      ["my-service"]="ATHENA_MY_SERVICE_VERSION"
      
      ```
    - Please note that the variable name declared here will be SAME as it is used in `config-local.sh` & `docker-compose.yml`.

### Hot-fix-deploy
- Create a new Jenkins job by copying [hot-fix-server](https://athena-jenkins.clariusgroup.com/view/athena-hot-fix/job/hot-fix-server/)
    - Job name shall be hot-fix-{service-name} e.g. `hot-fix-my-service`
    - Group: `athena-hot-fix`
- Update Jenkins job:
    - Build Steps 
        - Build Triggers > Projects to Build: `build-my-service`
    - Deployment step:
        - Build Triggers > Projects to Build: `deploy-service`
	    `SERVICE_NAME=my-service`
        
### test-deployment
- Create a new Jenkins job from copying [test-server](http://jenkins.dream-world.in:8080/job/test2-server/) 
    - Job name shall be {environment-name}-{service-name} e.g. test-my-service
    - Group: `athena-test`
- Update Jenkins job
- Build > Trigger/Build other Projects > Build Triggers
    - Update hot-fix job name `hot-fix-my-service`
- Save job
 
### staging-deployment
- Create a new Jenkins by copying [staging-server ](https://athena-jenkins.clariusgroup.com/view/athena-staging/job/staging-server/)
    - Job name shall be {environment-name}-{service-name} e.g. staging-`my-service`.
    - group: `athena-staging`
- Update hot-fix job name
   - Build > Trigger > Build Triggers
   - projects to build = hot-fix-`my-service`

### alias-service
- [athena-alias-version](https://athena-jenkins.clariusgroup.com/view/athena-common/job/athena-alias-version/)
    - Same as in the case of `deploy-service` job update, we need to configure the service's version variable here.
    - add service name at choice parameter `my-service`
    - save

## Types of Jenkins Jobs

### Build 
- Builds Maven Project, Build docker image & Pushes docker image to the docker registry.
- Created per microservice.
- User Input: branch, tag, docker-registry.
- Name: build-{service-name} e.g. build-sales
- Trigger: Manual. Though, it’s not used directly by the user. It's used internally by hot-fix-deploy & environment-build-and-deploy jobs.

### Deploy
- Deploys a service’s already built version (whose docker image is available on the docker registry) to a deployment environment.
- Created only 1 job per Project/hisab.
- User Input: service, tag, environment
- Name: deploy-service
- Trigger: Manual. Though, it’s not used directly by the user. It’s used internally by hot-fix-deploy & environment-build-and-deploy jobs.

### Hot-fix-deploy
- It's a combination of Build + Deploy job.
- Created per microservice.
- User Input: branch, environment.
- Name: hot-fix-{service-name} e.g. hot-fix-sales
- Trigger: Manual. Though, it’s used internally by environment-build-and-deploy jobs.
- `Note`: It creates a docker tag based on the environment.

### environment-build-and-deploy
- Builds service from its environment branch, deploys docker image & deploys service to its environment.
- Created per microservice & environment.
- We generally create environment deployment job only for test & staging environments. For deployments to other environments, we either use a Deploy job OR Hot-fix-deployment job.
- Trigger: Test environment job is automatically triggered when pushed to test environment branch ‘env-test’. But, Staging environment job is manually triggered when needed.
- User Input: None.
- Name: {environment-name}-{service-name} e.g. alpha-sales
- Implementation: It just invokes hot-fix-deploy jobs with proper inputs.

## Deployment Use-cases
- Auto-deployment to test the environment when something is pushed to test environment branch.
- Manually deploy to the staging environment from ‘master’ branch.
- Deploy the version which is already deployed on the staging environment, to the production.
- Build & Deploy a hot-fix version from hot-fix branch to the production environment.
