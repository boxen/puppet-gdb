# Public: Install gdb via homebrew
#
# Examples
#
#   include gdb
class gdb {

  case $::operatingsystem {
    'Darwin': {
      include homebrew

      case $::macosx_productversion_major {
        '10.9': {
          ensure_resource('homebrew::tap', 'homebrew/dupes', { 'ensure' => 'present' })

          package { 'homebrew/dupes/gdb': }
        }

        default: {
          # noop, gdb is included in OS X < 10.9
        }
      }
    }

    default: {
      package { 'gdb': }
    }
  }

}
