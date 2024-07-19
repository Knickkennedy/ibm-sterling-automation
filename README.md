# Ansible DevOps collection for IBM Sterling B2Bi, IBM Connect:Direct, Seas, ...

# Documentation

[https://ibm-sterling-devops.github.io/ansible-ibm-sterling/](https://ibm-sterling-devops.github.io/ansible-ibm-sterling/)

## Usage

Using the ansible scripts is simple. 

Firstly, make sure you have git installed, and go to the terminal of your machine. Then paste the following to copy the repo locally: 
```shell
git clone https://github.com/Knickkennedy/ibm-sterling-automation.git
```

Once you've cloned your repo locally, move your terminal into the root directory of the project
```shell
cd ibm-sterling-automation
```

There is a file ```env.sh``` that contains the necessary environment variables to tune this to match your environment.

Once you have populated the environment variables with the relevant fields, on a linux machine open your terminal and perform
```shell
source env.sh
```

## Installation

Once you've populated those fields, you'll need to login to your Openshift cluster at the CLI with
```shell
oc login <host:port> -u <username> -p <password> 
```

Alternatively you can use the login token from your Openshift web console.

Start by going to your openshift cluster and look in the upper right corner for your username and click it

![Openshift Login Example](/assets/ocloginexample.png)

then on the new tab that opens click the display token button

![display token example](/assets/displaytoken.png)

Make sure you copy the entire command from the "Log In with this token" section of the text

![example login screen](/assets/exampletextlogin.png)

Paste this command into your terminal and verify connectivity to the cluster with a simple command like
```shell
oc get projects
```

Finally let's perform our installation. You can either install an individual product as documented [here](https://ibm-sterling-devops.github.io/ansible-ibm-sterling/) or you can install all of the products that I've validated with
```shell
./multiple-install.sh
```

## Contributors

See the list of [contributors](https://github.com/ibm-sterling-devops/ansible-ibm-sterling/contributors) who participated in this project.

## License

This project is licensed under the Eclipse Public License - v 2.0 - see the [LICENSE.md](LICENSE.md) file for details

## Disclaimer

This repository is a community-driven projects and is not officially supported or endorsed by IBM. While members of the community may include IBM employees, this project is independent of IBM's official support channels. Please note that any contributions, issues, or inquiries regarding this repository should be directed to the community maintainers and not to IBM's support teams. We appreciate your understanding and participation in this community-driven initiative.

This code can be used as is. And any feedback will be welcome. We does not make any warranty about the completeness, reliability and accuracy of this code. Any action you take by using this code is strictly at your own risk, and this project will not be liable for any losses and damages in connection with the use of this code.
