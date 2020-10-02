# satrday-r-powered-excel
Resources for [satRday Columbus 2020](https://columbus2020.satrdays.org/#page-top) presentation, "R-Powered Excel"

Talk description:
>Excel spreadsheets are the tool of choice for data analysis and reporting among many business professionals, but Excel has its limitations for building repeatable, dynamic data processes. In this session, users will learn how to begin automating Excel workbooks using the openxlsxpackage. This approach combines R’s knack for reproducible data analysis with the accessibility and end-user interaction features that make Excel so prevalent.

    
### For more resources, [subscribe for FREE access to my data education resource library](https://georgejmount.com/subscribe/).

#### To host a presentation at your conference or organization, or to get in touch, [drop me a line or set up a free call on Microsoft Bookings](https://georgejmount.com/contact/).


Waiting for build to start...
Picked Git content provider.
Cloning into '/tmp/repo2dockernel5lhoa'...
HEAD is now at e219eb9 Update README.md
Building conda environment for python=3.7Using PythonBuildPack builder
Building conda environment for python=3.7Building conda environment for python=3.7Step 1/46 : FROM buildpack-deps:bionic
 ---> ba27ba8c1b38
Step 2/46 : ENV DEBIAN_FRONTEND=noninteractive
 ---> Using cache
 ---> 2ee71199b752
Step 3/46 : RUN apt-get -qq update &&     apt-get -qq install --yes --no-install-recommends locales > /dev/null &&     apt-get -qq purge &&     apt-get -qq clean &&     rm -rf /var/lib/apt/lists/*
 ---> Using cache
 ---> 91ddff882ab9
Step 4/46 : RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen &&     locale-gen
 ---> Using cache
 ---> 47bb9b4df35f
Step 5/46 : ENV LC_ALL en_US.UTF-8
 ---> Using cache
 ---> 8caf7e9beacc
Step 6/46 : ENV LANG en_US.UTF-8
 ---> Using cache
 ---> b68b017b8472
Step 7/46 : ENV LANGUAGE en_US.UTF-8
 ---> Using cache
 ---> f6ac66c99ffc
Step 8/46 : ENV SHELL /bin/bash
 ---> Using cache
 ---> 0abf6027b6b2
Step 9/46 : ARG NB_USER
 ---> Using cache
 ---> 539d909cb143
Step 10/46 : ARG NB_UID
 ---> Using cache
 ---> f9c8cb1fb496
Step 11/46 : ENV USER ${NB_USER}
 ---> Using cache
 ---> 6bded5ec0dae
Step 12/46 : ENV HOME /home/${NB_USER}
 ---> Using cache
 ---> 5939780445fc
Step 13/46 : RUN groupadd         --gid ${NB_UID}         ${NB_USER} &&     useradd         --comment "Default user"         --create-home         --gid ${NB_UID}         --no-log-init         --shell /bin/bash         --uid ${NB_UID}         ${NB_USER}
 ---> Using cache
 ---> f313b5754cf9
Step 14/46 : RUN wget --quiet -O - https://deb.nodesource.com/gpgkey/nodesource.gpg.key |  apt-key add - &&     DISTRO="bionic" &&     echo "deb https://deb.nodesource.com/node_10.x $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list &&     echo "deb-src https://deb.nodesource.com/node_10.x $DISTRO main" >> /etc/apt/sources.list.d/nodesource.list
 ---> Using cache
 ---> 41656410c2b9
Step 15/46 : RUN apt-get -qq update &&     apt-get -qq install --yes --no-install-recommends   less        nodejs        unzip        > /dev/null &&     apt-get -qq purge &&     apt-get -qq clean &&     rm -rf /var/lib/apt/lists/*
 ---> Using cache
 ---> 90382ccea859
Step 16/46 : EXPOSE 8888
 ---> Using cache
 ---> 5757f7bbf014
Step 17/46 : ENV APP_BASE /srv
 ---> Using cache
 ---> 713a71b376ac
Step 18/46 : ENV NPM_DIR ${APP_BASE}/npm
 ---> Using cache
 ---> c8240b2a5913
Step 19/46 : ENV NPM_CONFIG_GLOBALCONFIG ${NPM_DIR}/npmrc
 ---> Using cache
 ---> 7049237b5106
Step 20/46 : ENV CONDA_DIR ${APP_BASE}/conda
 ---> Using cache
 ---> 9bb57e831601
Step 21/46 : ENV NB_PYTHON_PREFIX ${CONDA_DIR}/envs/notebook
 ---> Using cache
 ---> 3806357054bb
Step 22/46 : ENV KERNEL_PYTHON_PREFIX ${NB_PYTHON_PREFIX}
 ---> Using cache
 ---> de411d7aa3ba
Step 23/46 : ENV PATH ${NB_PYTHON_PREFIX}/bin:${CONDA_DIR}/bin:${NPM_DIR}/bin:${PATH}
 ---> Using cache
 ---> 4d3630f4093f
Step 24/46 : COPY build_script_files/-2fusr-2flib-2fpython3-2e8-2fsite-2dpackages-2frepo2docker-2fbuildpacks-2fconda-2factivate-2dconda-2esh-391af5 /etc/profile.d/activate-conda.sh
 ---> Using cache
 ---> d32429849ec4
Step 25/46 : COPY build_script_files/-2fusr-2flib-2fpython3-2e8-2fsite-2dpackages-2frepo2docker-2fbuildpacks-2fconda-2fenvironment-2epy-2d3-2e7-2efrozen-2eyml-037262 /tmp/environment.yml
 ---> Using cache
 ---> 1b9a5b4c9cbb
Step 26/46 : COPY build_script_files/-2fusr-2flib-2fpython3-2e8-2fsite-2dpackages-2frepo2docker-2fbuildpacks-2fconda-2finstall-2dminiforge-2ebash-514214 /tmp/install-miniforge.bash
 ---> Using cache
 ---> c2b90f9725e3
Step 27/46 : RUN mkdir -p ${NPM_DIR} && chown -R ${NB_USER}:${NB_USER} ${NPM_DIR}
 ---> Using cache
 ---> f849f6dcd368
Step 28/46 : USER ${NB_USER}
 ---> Using cache
 ---> 8a0bb7543d0e
Step 29/46 : RUN npm config --global set prefix ${NPM_DIR}
 ---> Using cache
 ---> b34f2b8a068f
Step 30/46 : USER root
 ---> Using cache
 ---> 9c46fa10fc60
Step 31/46 : RUN bash -c 'time /tmp/install-miniforge.bash' && rm /tmp/install-miniforge.bash /tmp/environment.yml
 ---> Using cache
 ---> a21f5d5ffec6
Step 32/46 : ARG REPO_DIR=${HOME}
 ---> Using cache
 ---> 310afb1781a2
Step 33/46 : ENV REPO_DIR ${REPO_DIR}
 ---> Using cache
 ---> 2c38e53e7a50
Step 34/46 : WORKDIR ${REPO_DIR}
 ---> Using cache
 ---> 162a6a9ef90b
Step 35/46 : ENV PATH ${HOME}/.local/bin:${REPO_DIR}/.local/bin:${PATH}
 ---> Using cache
 ---> 4e3f176b9dea
Step 36/46 : ENV CONDA_DEFAULT_ENV ${KERNEL_PYTHON_PREFIX}
 ---> Using cache
 ---> 94ba22d0a04f
Step 37/46 : USER root
 ---> Using cache
 ---> 341bb6cafc9f
Step 38/46 : COPY src/ ${REPO_DIR}
 ---> e2a71dd9538e
Step 39/46 : RUN chown -R ${NB_USER}:${NB_USER} ${REPO_DIR}
 ---> Running in da5aa80dd856
Removing intermediate container da5aa80dd856
 ---> dc60b1a660ab
Step 40/46 : LABEL repo2docker.ref="e219eb99ed5ea1f7404e795c32d3c64f4fdfe41e"
 ---> Running in e094a031e521
Removing intermediate container e094a031e521
 ---> a6e5d5e7e027
Step 41/46 : LABEL repo2docker.repo="https://github.com/stringfestdata/satrday-r-powered-excel"
 ---> Running in bd8e6869deed
Removing intermediate container bd8e6869deed
 ---> 37acfa9d607d
Step 42/46 : LABEL repo2docker.version="0.11.0+165.gbc9b1ae"
 ---> Running in 569d71f234a6
Removing intermediate container 569d71f234a6
 ---> 7a06db374824
Step 43/46 : USER ${NB_USER}
 ---> Running in f54e47444387
Removing intermediate container f54e47444387
 ---> 66d0c2498dd6
Step 44/46 : COPY /repo2docker-entrypoint /usr/local/bin/repo2docker-entrypoint
 ---> db2fa2a7da57
Step 45/46 : ENTRYPOINT ["/usr/local/bin/repo2docker-entrypoint"]
 ---> Running in 3447ba64be1f
Removing intermediate container 3447ba64be1f
 ---> 5ac6c39647dc
Step 46/46 : CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]
 ---> Running in df3b3d13b05d
Removing intermediate container df3b3d13b05d
 ---> 560341d20136
{"aux": {"ID": "sha256:560341d2013623ad574ef3c8ecbcfbbf76065a04dc737d42c25d110fe08c2af8"}}Successfully built 560341d20136
Successfully tagged gcr.io/binderhub-288415/r2d-staging-72d7634-stringfestdata-2dsatrday-2dr-2dpowered-2dexcel-1e182b:e219eb99ed5ea1f7404e795c32d3c64f4fdfe41e
Pushing image
Successfully pushed gcr.io/binderhub-288415/r2d-staging-72d7634-stringfestdata-2dsatrday-2dr-2dpowered-2dexcel-1e182b:e219eb99ed5ea1f7404e795c32d3c64f4fdfe41eBuilt image, launching...
Launching server...
