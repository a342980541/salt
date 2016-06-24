complex_search_and_replace:
  file.replace:
    - name: /opt/data-integration/spoon.sh
    - pattern: PENTAHO_DI_JAVA_OPTIONS="-Xmx512m -XX:MaxPermSize=256m"
    - repl: PENTAHO_DI_JAVA_OPTIONS="-Xmx8192m -XX:MaxPermSize=9216m"
    - backup: true

find_replace:
  file.replace:
    - name: /opt/data-integration/spoon.sh
    - pattern: OPT="*"
    - repl: OPT="* -Dorg.eclipse.swt.internal.gtk.cairoGraphics=false"'
    - backup: true
