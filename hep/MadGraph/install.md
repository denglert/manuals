# Installation instructions

## Troubleshooting

### Ninja can't be installed - ''Could not download data at...''

**Problem:**
The bitbucket link redirects to amazon-aws, and older versions of wget give a name to the file which
contains string(s) from the redirected link and therefore halts the process.

**A solution** (quite possibly not the best)


Madgraph gets the package info from here:
http://madgraph.physics.illinois.edu/package_info.dat

We need to hijack the web address from which HEPTools is downloaded.

Inside `./madgraph/interface/madgraph_interface.py`:

~~~~
    def advanced_install(self, tool_to_install,
                               HepToolsInstaller_web_address=None,
                               additional_options=[]):
        """ Uses the HEPToolsInstaller.py script maintened online to install
        HEP tools with more complicated dependences.
        Additional options will be added to the list when calling HEPInstaller"""
        print('!!!HERE!!!')
        print('HepToolsInstaller_web_address', HepToolsInstaller_web_address)
        print('!!!HERE!!!')
        HepToolsInstaller_web_address =
'http://denglert.web.cern.ch/denglert/HEPToolsInstaller_V86.tar.gz'

        # prevent border effects
        add_options = list(additional_options)

        # Always refresh the installer if already present
        if not os.path.isdir(pjoin(MG5DIR,'HEPTools','HEPToolsInstallers')):
            if HepToolsInstaller_web_address is None:
                raise MadGraph5Error, "The option 'HepToolsInstaller_web_address'"+\
                             " must be specified in function advanced_install"+\
                                " if the installers are not already downloaded."
            if not os.path.isdir(pjoin(MG5DIR,'HEPTools')):
                os.mkdir(pjoin(MG5DIR,'HEPTools'))
        elif not HepToolsInstaller_web_address is None:
            shutil.rmtree(pjoin(MG5DIR,'HEPTools','HEPToolsInstallers'))
        if not HepToolsInstaller_web_address is None:
            logger.info('Downloading the HEPToolInstaller at:\n   %s'%
                                                  HepToolsInstaller_web_address)

~~~~

so now it points to a direct address where a modified version of HEPToolsInstaller is found.

Inside `HEPToolInstaller.py`:

~~~~
'tarball':      ['online','denglert.web.cern.ch/denglert/ninja-latest.tar.gz'],
~~~~
