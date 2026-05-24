project('io.github.JanGalek.vala-application-template', 'vala', 'c',
    version: '0.1.0',
    meson_version: '>= 1.0.0'
)

reponame = meson.project_name().split('.')[3].to_lower()

# Include the translations module
i18n = import('i18n')
gnome = import('gnome')
valac = meson.get_compiler('vala')

# Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')


dependency('gtk4')


# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    reponame,
    'src' / 'Application.vala',
    dependencies: [
        dependency('gtk4'),
        dependency('glib-2.0'),
        dependency('libadwaita-1', version: '>= 1.6'),
    ],
    vala_args: ['--pkg', 'libadwaita-1'],
    install: true
)

subdir('data')
subdir('po')
