project('io.github.yourusername.yourrepositoryname', 'vala', 'c',
    version: '0.1.0',
    meson_version: '>= 1.0.0'
)

# Include the translations module
i18n = import('i18n')

# Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

#Translate and install our .desktop file
i18n.merge_file(
    input: 'hello-again.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.project_source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

#Translate and install our .metainfo file
i18n.merge_file(
    input: 'hello-again.metainfo.xml.in',
    output: meson.project_name() + '.metainfo.xml',
    po_dir: meson.project_source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src' / 'Application.vala',
    dependencies: [
        dependency('gtk4')
    ],
    install: true
)

# Install our .desktop file so the Applications Menu will see it
#install_data(
#    'data' / 'hello-again.desktop',
#    install_dir: get_option('datadir') / 'applications',
#)

# Install our .metainfo.xml file so AppCenter will see it
#install_data(
#    'data' / 'hello-again.metainfo.xml',
#    install_dir: get_option('datadir') / 'metainfo',
#    rename: meson.project_name() + '.metainfo.xml'
#)

subdir('data')
subdir('po')
