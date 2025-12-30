#!/bin/bash

locale=$(defaults read -g AppleLocale 2>/dev/null)
lang_code=$(echo "${locale:-en}" | sed 's/[._-].*$//' | tr '[:upper:]' '[:lower:]')
[ -z "$lang_code" ] && lang_code="en"

SUPPORTED_CODES="en es gl eu fr de it pt uk ga sv da nl no nb nn is fi zh ja ko vi mn hi lv lt et br gd cy gallo ar el ro"

load_lang() {
    lang_code_local="$1"
    LANG_SET=0
    if echo " $SUPPORTED_CODES " | grep -q " $lang_code_local "; then
        LANG_SET=1
    fi

    TXT_DRAG="Drag files or folders and press Enter:"
    TXT_NO_INPUT="No path received."
    TXT_SETFILE_MISSING="SetFile command not found."
    TXT_INSTALL_XCODE="Install the command line tools with: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool not found."
    TXT_EXIFTOOL_SKIPPED="ExifTool not installed. Internal metadata will not be updated."
    TXT_YEAR_PROMPT="Enter the new year (YYYY):"
    TXT_MONTH_PROMPT="Enter the new month (1-12):"
    TXT_DAY_PROMPT="Enter the new day (1-31):"
    TXT_INVALID_NUMBER="Invalid numeric format."
    TXT_INVALID_YEAR="Invalid year format."
    TXT_INVALID_MONTH="Invalid month format."
    TXT_INVALID_DAY="Invalid day format."
    TXT_INVALID_HOUR="Invalid hour format."
    TXT_INVALID_MINUTE="Invalid minutes format."
    TXT_MONTH_RANGE="Month out of range."
    TXT_DAY_RANGE="Day out of range."
    TXT_HOUR_RANGE="Hour out of range."
    TXT_MIN_RANGE="Minutes out of range."
    TXT_INVALID_DATE="The specified date is not valid."
    TXT_FUTURE_DATE="Future dates are not allowed."
    TXT_RETRY="Try again:"
    TXT_CHANGE_TIME="Do you also want to change the time? (y/n)"
    TXT_HOUR_PROMPT="Enter the hour (0-23):"
    TXT_MIN_PROMPT="Enter the minutes (0-59):"
    TXT_CHANGE_SECONDS="Do you also want to change the seconds? (y/n)"
    TXT_SECONDS_PROMPT="Enter the seconds (0-59):"
    TXT_INVALID_SECOND="Invalid seconds format."
    TXT_SECOND_RANGE="Seconds out of range."
    TXT_INVALID_RESPONSE="Invalid response. Try again:"
    TXT_CONFIRM_HEADER="This creation date will be used for all items:"
    TXT_CONFIRM_HEADER_TIME="This creation date and time will be used for all items:"
    TXT_CONFIRM_HEADER_KEEP="This date will be used and the original time of each item will be kept:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="original time"
    TXT_CONFIRM_QUESTION="Are you sure you want to continue? (y/n)"
    TXT_CANCELLED="Cancelled."
    TXT_PROCESSING_FOLDER="➜ Processing folder:"
    TXT_DONE_FOLDER="✔ Dates changed in:"
    TXT_PROCESSING_FILE="➜ Processing file:"
    TXT_DONE_FILE="✔ File updated:"
    TXT_NOT_FOUND="✖ Not found:"
    TXT_FINISHED="Operation completed."

    case "$lang_code_local" in
  es)
    TXT_DRAG="Arrastra archivos o carpetas y pulsa Enter:"
    TXT_NO_INPUT="No se ha recibido ninguna ruta."
    TXT_SETFILE_MISSING="No se encontró SetFile."
    TXT_INSTALL_XCODE="Instala las herramientas de línea de comandos con: xcode-select --install"
    TXT_EXIFTOOL_MISSING="No se encontró exiftool."
    TXT_EXIFTOOL_SKIPPED="Los metadatos internos no se cambiarán."
    TXT_YEAR_PROMPT="Introduce el nuevo año (AAAA):"
    TXT_MONTH_PROMPT="Introduce el nuevo mes (1-12):"
    TXT_DAY_PROMPT="Introduce el nuevo día (1-31):"
    TXT_INVALID_NUMBER="Formato numérico no válido."
    TXT_INVALID_YEAR="Formato de año no válido."
    TXT_INVALID_MONTH="Formato de mes no válido."
    TXT_INVALID_DAY="Formato de día no válido."
    TXT_INVALID_HOUR="Formato de hora no válido."
    TXT_INVALID_MINUTE="Formato de minutos no válido."
    TXT_MONTH_RANGE="Mes fuera de rango."
    TXT_DAY_RANGE="Día fuera de rango."
    TXT_HOUR_RANGE="Hora fuera de rango."
    TXT_MIN_RANGE="Minutos fuera de rango."
    TXT_INVALID_DATE="La fecha indicada no es válida."
    TXT_FUTURE_DATE="No se permiten fechas futuras."
    TXT_RETRY="Vuelve a intentarlo:"
    TXT_CHANGE_TIME="¿Quieres cambiar también la hora? (s/n)"
    TXT_HOUR_PROMPT="Introduce la hora (0-23):"
    TXT_MIN_PROMPT="Introduce los minutos (0-59):"
    TXT_CHANGE_SECONDS="¿Quieres cambiar también los segundos? (s/n)"
    TXT_SECONDS_PROMPT="Introduce los segundos (0-59):"
    TXT_INVALID_SECOND="Formato de segundos no válido."
    TXT_SECOND_RANGE="Segundos fuera de rango."
    TXT_INVALID_RESPONSE="Respuesta no válida. Vuelve a intentarlo:"
    TXT_CONFIRM_HEADER="Se usará esta fecha de creación para todos los elementos:"
    TXT_CONFIRM_HEADER_TIME="Se usará esta fecha y hora de creación para todos los elementos:"
    TXT_CONFIRM_HEADER_KEEP="Se usará esta fecha y se mantendrá la hora original de cada elemento:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="hora original"
    TXT_CONFIRM_QUESTION="¿Seguro que quieres continuar? (s/n)"
    TXT_CANCELLED="Cancelado."
    TXT_PROCESSING_FOLDER="➜ Procesando carpeta:"
    TXT_DONE_FOLDER="✔ Fechas cambiadas en:"
    TXT_PROCESSING_FILE="➜ Procesando archivo:"
    TXT_DONE_FILE="✔ Archivo actualizado:"
    TXT_NOT_FOUND="✖ No existe:"
    TXT_FINISHED="Operación completada."
    ;;
  gl)
    TXT_DRAG="Arrastra ficheiros ou carpetas e preme Enter:"
    TXT_NO_INPUT="Non se recibiu ningunha ruta."
    TXT_SETFILE_MISSING="Non se atopou o comando SetFile."
    TXT_INSTALL_XCODE="Instala as ferramentas de liña de ordes con: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Non se atopou exiftool."
    TXT_EXIFTOOL_SKIPPED="Exiftool non instalado. Non se actualizarán os metadatos internos."
    TXT_YEAR_PROMPT="Introduce o novo ano (AAAA):"
    TXT_MONTH_PROMPT="Introduce o novo mes (1-12):"
    TXT_DAY_PROMPT="Introduce o novo día (1-31):"
    TXT_INVALID_NUMBER="Formato numérico non válido."
    TXT_INVALID_YEAR="Formato de ano non válido."
    TXT_INVALID_MONTH="Formato de mes non válido."
    TXT_INVALID_DAY="Formato de día non válido."
    TXT_INVALID_HOUR="Formato de hora non válido."
    TXT_INVALID_MINUTE="Formato de minutos non válido."
    TXT_MONTH_RANGE="Mes fóra de rango."
    TXT_DAY_RANGE="Día fóra de rango."
    TXT_HOUR_RANGE="Hora fóra de rango."
    TXT_MIN_RANGE="Minutos fóra de rango."
    TXT_INVALID_DATE="A data indicada non é válida."
    TXT_FUTURE_DATE="Non se permiten datas futuras."
    TXT_RETRY="Téntao de novo:"
    TXT_CHANGE_TIME="Queres cambiar tamén a hora? (s/n)"
    TXT_HOUR_PROMPT="Introduce a hora (0-23):"
    TXT_MIN_PROMPT="Introduce os minutos (0-59):"
    TXT_CHANGE_SECONDS="Queres cambiar tamén os segundos? (s/n)"
    TXT_SECONDS_PROMPT="Introduce os segundos (0-59):"
    TXT_INVALID_SECOND="Formato de segundos non válido."
    TXT_SECOND_RANGE="Segundos fóra de rango."
    TXT_INVALID_RESPONSE="Resposta non válida. Téntao de novo:"
    TXT_CONFIRM_HEADER="Empregarase esta data de creación para todos os elementos:"
    TXT_CONFIRM_HEADER_TIME="Empregarase esta data e hora de creación para todos os elementos:"
    TXT_CONFIRM_HEADER_KEEP="Empregarase esta data e manterase a hora orixinal de cada elemento:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="hora orixinal"
    TXT_CONFIRM_QUESTION="Seguro que queres continuar? (s/n)"
    TXT_CANCELLED="Cancelado."
    TXT_PROCESSING_FOLDER="➜ Procesando carpeta:"
    TXT_DONE_FOLDER="✔ Datas cambiadas en:"
    TXT_PROCESSING_FILE="➜ Procesando ficheiro:"
    TXT_DONE_FILE="✔ Ficheiro actualizado:"
    TXT_NOT_FOUND="✖ Non existe:"
    TXT_FINISHED="Operación rematada."
    ;;
  eu)
    TXT_DRAG="Arrastatu fitxategiak edo karpetak eta sakatu Enter:"
    TXT_NO_INPUT="Ez da biderik jaso."
    TXT_SETFILE_MISSING="Ez da SetFile komandoa aurkitu."
    TXT_INSTALL_XCODE="Instalatu komando lerroko tresnak: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Ez da exiftool aurkitu."
    TXT_EXIFTOOL_SKIPPED="Exiftool ez da instalatu. Barneko metadatuak ez dira eguneratuko."
    TXT_YEAR_PROMPT="Idatzi urte berria (UUUU):"
    TXT_MONTH_PROMPT="Idatzi hilabete berria (1-12):"
    TXT_DAY_PROMPT="Idatzi egun berria (1-31):"
    TXT_INVALID_NUMBER="Zenbaki formatu baliogabea."
    TXT_INVALID_YEAR="Urte formatu baliogabea."
    TXT_INVALID_MONTH="Hilabete formatu baliogabea."
    TXT_INVALID_DAY="Egun formatu baliogabea."
    TXT_INVALID_HOUR="Ordu formatu baliogabea."
    TXT_INVALID_MINUTE="Minutu formatu baliogabea."
    TXT_MONTH_RANGE="Hilabetea muga kanpo dago."
    TXT_DAY_RANGE="Eguna muga kanpo dago."
    TXT_HOUR_RANGE="Ordua muga kanpo dago."
    TXT_MIN_RANGE="Minutuak muga kanpo daude."
    TXT_INVALID_DATE="Emandako data baliogabea da."
    TXT_FUTURE_DATE="Etorkizuneko datak ez dira onartzen."
    TXT_RETRY="Saiatu berriro:"
    TXT_CHANGE_TIME="Ordua ere aldatu nahi duzu? (b/e)"
    TXT_HOUR_PROMPT="Idatzi ordua (0-23):"
    TXT_MIN_PROMPT="Idatzi minutuak (0-59):"
    TXT_CHANGE_SECONDS="Segundoak ere aldatu nahi dituzu? (b/e)"
    TXT_SECONDS_PROMPT="Idatzi segundoak (0-59):"
    TXT_INVALID_SECOND="Segundoen formatu baliogabea."
    TXT_SECOND_RANGE="Segundoak muga kanpo daude."
    TXT_INVALID_RESPONSE="Erantzun baliogabea. Saiatu berriro:"
    TXT_CONFIRM_HEADER="Sorkuntza-data hau erabiliko da elementu guztientzat:"
    TXT_CONFIRM_HEADER_TIME="Sorkuntza-data eta ordu hau erabiliko dira elementu guztientzat:"
    TXT_CONFIRM_HEADER_KEEP="Data hau erabiliko da eta elementu bakoitzaren jatorrizko ordua gordeko da:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="jatorrizko ordua"
    TXT_CONFIRM_QUESTION="Ziur jarraitu nahi duzula? (b/e)"
    TXT_CANCELLED="Bertan behera utzita."
    TXT_PROCESSING_FOLDER="➜ Karpetaren prozesatzen:"
    TXT_DONE_FOLDER="✔ Datak aldatu dira hemen:"
    TXT_PROCESSING_FILE="➜ Fitxategia prozesatzen:"
    TXT_DONE_FILE="✔ Fitxategia eguneratuta:"
    TXT_NOT_FOUND="✖ Ez da aurkitu:"
    TXT_FINISHED="Eragiketa amaituta."
    ;;
  fr)
    TXT_DRAG="Glissez des fichiers ou des dossiers et appuyez sur Entrée :"
    TXT_NO_INPUT="Aucun chemin reçu."
    TXT_SETFILE_MISSING="Commande SetFile introuvable."
    TXT_INSTALL_XCODE="Installez les outils de ligne de commande avec : xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool introuvable."
    TXT_EXIFTOOL_SKIPPED="ExifTool non installé. Les métadonnées internes ne seront pas mises à jour."
    TXT_YEAR_PROMPT="Entrez la nouvelle année (AAAA) :"
    TXT_MONTH_PROMPT="Entrez le nouveau mois (1-12) :"
    TXT_DAY_PROMPT="Entrez le nouveau jour (1-31) :"
    TXT_INVALID_NUMBER="Format numérique non valide."
    TXT_INVALID_YEAR="Format d'année non valide."
    TXT_INVALID_MONTH="Format de mois non valide."
    TXT_INVALID_DAY="Format de jour non valide."
    TXT_INVALID_HOUR="Format d'heure non valide."
    TXT_INVALID_MINUTE="Format des minutes non valide."
    TXT_MONTH_RANGE="Mois hors limite."
    TXT_DAY_RANGE="Jour hors limite."
    TXT_HOUR_RANGE="Heure hors limite."
    TXT_MIN_RANGE="Minutes hors limite."
    TXT_INVALID_DATE="La date indiquée n'est pas valide."
    TXT_FUTURE_DATE="Les dates futures ne sont pas autorisées."
    TXT_RETRY="Réessayez :"
    TXT_CHANGE_TIME="Voulez-vous aussi changer l'heure ? (o/n)"
    TXT_HOUR_PROMPT="Entrez l'heure (0-23) :"
    TXT_MIN_PROMPT="Entrez les minutes (0-59) :"
    TXT_CHANGE_SECONDS="Voulez-vous aussi changer les secondes ? (o/n)"
    TXT_SECONDS_PROMPT="Entrez les secondes (0-59) :"
    TXT_INVALID_SECOND="Format des secondes non valide."
    TXT_SECOND_RANGE="Secondes hors limite."
    TXT_INVALID_RESPONSE="Réponse non valide. Réessayez :"
    TXT_CONFIRM_HEADER="Cette date de création sera utilisée pour tous les éléments :"
    TXT_CONFIRM_HEADER_TIME="Cette date et heure de création seront utilisées pour tous les éléments :"
    TXT_CONFIRM_HEADER_KEEP="Cette date sera utilisée et l'heure d'origine de chaque élément sera conservée :"
    TXT_ORIGINAL_TIME_PLACEHOLDER="heure d'origine"
    TXT_CONFIRM_QUESTION="Voulez-vous vraiment continuer ? (o/n)"
    TXT_CANCELLED="Annulé."
    TXT_PROCESSING_FOLDER="➜ Traitement du dossier :"
    TXT_DONE_FOLDER="✔ Dates modifiées dans :"
    TXT_PROCESSING_FILE="➜ Traitement du fichier :"
    TXT_DONE_FILE="✔ Fichier mis à jour :"
    TXT_NOT_FOUND="✖ Introuvable :"
    TXT_FINISHED="Opération terminée."
    ;;
  de)
    TXT_DRAG="Ziehe Dateien oder Ordner hierher und drücke Enter:"
    TXT_NO_INPUT="Kein Pfad empfangen."
    TXT_SETFILE_MISSING="Der Befehl SetFile wurde nicht gefunden."
    TXT_INSTALL_XCODE="Installiere die Kommandozeilenwerkzeuge mit: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nicht gefunden."
    TXT_EXIFTOOL_SKIPPED="ExifTool nicht installiert. Interne Metadaten werden nicht aktualisiert."
    TXT_YEAR_PROMPT="Gib das neue Jahr ein (JJJJ):"
    TXT_MONTH_PROMPT="Gib den neuen Monat ein (1-12):"
    TXT_DAY_PROMPT="Gib den neuen Tag ein (1-31):"
    TXT_INVALID_NUMBER="Ungültiges Zahlenformat."
    TXT_INVALID_YEAR="Ungültiges Jahresformat."
    TXT_INVALID_MONTH="Ungültiges Monatsformat."
    TXT_INVALID_DAY="Ungültiges Tagesformat."
    TXT_INVALID_HOUR="Ungültiges Stundenformat."
    TXT_INVALID_MINUTE="Ungültiges Minutenformat."
    TXT_MONTH_RANGE="Monat außerhalb des gültigen Bereichs."
    TXT_DAY_RANGE="Tag außerhalb des gültigen Bereichs."
    TXT_HOUR_RANGE="Stunde außerhalb des gültigen Bereichs."
    TXT_MIN_RANGE="Minuten außerhalb des gültigen Bereichs."
    TXT_INVALID_DATE="Das eingegebene Datum ist ungültig."
    TXT_FUTURE_DATE="Zukünftige Daten sind nicht erlaubt."
    TXT_RETRY="Versuche es erneut:"
    TXT_CHANGE_TIME="Möchtest du auch die Uhrzeit ändern? (j/n)"
    TXT_HOUR_PROMPT="Gib die Stunde ein (0-23):"
    TXT_MIN_PROMPT="Gib die Minuten ein (0-59):"
    TXT_CHANGE_SECONDS="Möchtest du auch die Sekunden ändern? (j/n)"
    TXT_SECONDS_PROMPT="Gib die Sekunden ein (0-59):"
    TXT_INVALID_SECOND="Ungültiges Sekundenformat."
    TXT_SECOND_RANGE="Sekunden außerhalb des gültigen Bereichs."
    TXT_INVALID_RESPONSE="Ungültige Antwort. Versuche es erneut:"
    TXT_CONFIRM_HEADER="Dieses Erstellungsdatum wird für alle Elemente verwendet:"
    TXT_CONFIRM_HEADER_TIME="Dieses Erstellungsdatum und diese Uhrzeit werden für alle Elemente verwendet:"
    TXT_CONFIRM_HEADER_KEEP="Dieses Datum wird verwendet und die ursprüngliche Uhrzeit jedes Elements beibehalten:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="ursprüngliche Uhrzeit"
    TXT_CONFIRM_QUESTION="Bist du sicher, dass du fortfahren möchtest? (j/n)"
    TXT_CANCELLED="Abgebrochen."
    TXT_PROCESSING_FOLDER="➜ Ordner wird verarbeitet:"
    TXT_DONE_FOLDER="✔ Daten geändert in:"
    TXT_PROCESSING_FILE="➜ Datei wird verarbeitet:"
    TXT_DONE_FILE="✔ Datei aktualisiert:"
    TXT_NOT_FOUND="✖ Nicht gefunden:"
    TXT_FINISHED="Vorgang abgeschlossen."
    ;;
  it)
    TXT_DRAG="Trascina file o cartelle e premi Invio:"
    TXT_NO_INPUT="Nessun percorso ricevuto."
    TXT_SETFILE_MISSING="Comando SetFile non trovato."
    TXT_INSTALL_XCODE="Installa gli strumenti da riga di comando con: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Exiftool non trovato."
    TXT_EXIFTOOL_SKIPPED="Exiftool non installato. I metadati interni non verranno aggiornati."
    TXT_YEAR_PROMPT="Inserisci il nuovo anno (AAAA):"
    TXT_MONTH_PROMPT="Inserisci il nuovo mese (1-12):"
    TXT_DAY_PROMPT="Inserisci il nuovo giorno (1-31):"
    TXT_INVALID_NUMBER="Formato numerico non valido."
    TXT_INVALID_YEAR="Formato dell'anno non valido."
    TXT_INVALID_MONTH="Formato del mese non valido."
    TXT_INVALID_DAY="Formato del giorno non valido."
    TXT_INVALID_HOUR="Formato dell'ora non valido."
    TXT_INVALID_MINUTE="Formato dei minuti non valido."
    TXT_MONTH_RANGE="Mese fuori dall'intervallo."
    TXT_DAY_RANGE="Giorno fuori dall'intervallo."
    TXT_HOUR_RANGE="Ora fuori dall'intervallo."
    TXT_MIN_RANGE="Minuti fuori dall'intervallo."
    TXT_INVALID_DATE="La data indicata non è valida."
    TXT_FUTURE_DATE="Le date future non sono permesse."
    TXT_RETRY="Riprova:"
    TXT_CHANGE_TIME="Vuoi cambiare anche l'ora? (s/n)"
    TXT_HOUR_PROMPT="Inserisci l'ora (0-23):"
    TXT_MIN_PROMPT="Inserisci i minuti (0-59):"
    TXT_CHANGE_SECONDS="Vuoi cambiare anche i secondi? (s/n)"
    TXT_SECONDS_PROMPT="Inserisci i secondi (0-59):"
    TXT_INVALID_SECOND="Formato dei secondi non valido."
    TXT_SECOND_RANGE="Secondi fuori dall'intervallo."
    TXT_INVALID_RESPONSE="Risposta non valida. Riprova:"
    TXT_CONFIRM_HEADER="Questa data di creazione verrà usata per tutti gli elementi:"
    TXT_CONFIRM_HEADER_TIME="Questa data e ora di creazione verranno usate per tutti gli elementi:"
    TXT_CONFIRM_HEADER_KEEP="Verrà usata questa data e sarà mantenuta l'ora originale di ogni elemento:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="ora originale"
    TXT_CONFIRM_QUESTION="Sei sicuro di voler continuare? (s/n)"
    TXT_CANCELLED="Annullato."
    TXT_PROCESSING_FOLDER="➜ Elaborazione cartella:"
    TXT_DONE_FOLDER="✔ Date modificate in:"
    TXT_PROCESSING_FILE="➜ Elaborazione file:"
    TXT_DONE_FILE="✔ File aggiornato:"
    TXT_NOT_FOUND="✖ Non trovato:"
    TXT_FINISHED="Operazione completata."
    ;;
  pt)
    TXT_DRAG="Arraste ficheiros ou pastas e prima Enter:"
    TXT_NO_INPUT="Nenhum caminho recebido."
    TXT_SETFILE_MISSING="Comando SetFile não encontrado."
    TXT_INSTALL_XCODE="Instale as ferramentas de linha de comandos com: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Exiftool não encontrado."
    TXT_EXIFTOOL_SKIPPED="Exiftool não instalado. Os metadados internos não serão atualizados."
    TXT_YEAR_PROMPT="Introduza o novo ano (AAAA):"
    TXT_MONTH_PROMPT="Introduza o novo mês (1-12):"
    TXT_DAY_PROMPT="Introduza o novo dia (1-31):"
    TXT_INVALID_NUMBER="Formato numérico não válido."
    TXT_INVALID_YEAR="Formato de ano não válido."
    TXT_INVALID_MONTH="Formato de mês não válido."
    TXT_INVALID_DAY="Formato de dia não válido."
    TXT_INVALID_HOUR="Formato de hora não válido."
    TXT_INVALID_MINUTE="Formato de minutos não válido."
    TXT_MONTH_RANGE="Mês fora do intervalo."
    TXT_DAY_RANGE="Dia fora do intervalo."
    TXT_HOUR_RANGE="Hora fora do intervalo."
    TXT_MIN_RANGE="Minutos fora do intervalo."
    TXT_INVALID_DATE="A data indicada não é válida."
    TXT_FUTURE_DATE="Datas futuras não são permitidas."
    TXT_RETRY="Tente novamente:"
    TXT_CHANGE_TIME="Quer alterar também a hora? (s/n)"
    TXT_HOUR_PROMPT="Introduza a hora (0-23):"
    TXT_MIN_PROMPT="Introduza os minutos (0-59):"
    TXT_CHANGE_SECONDS="Quer alterar também os segundos? (s/n)"
    TXT_SECONDS_PROMPT="Introduza os segundos (0-59):"
    TXT_INVALID_SECOND="Formato de segundos não válido."
    TXT_SECOND_RANGE="Segundos fora do intervalo."
    TXT_INVALID_RESPONSE="Resposta não válida. Tente novamente:"
    TXT_CONFIRM_HEADER="Esta data de criação será usada para todos os elementos:"
    TXT_CONFIRM_HEADER_TIME="Esta data e hora de criação serão usadas para todos os elementos:"
    TXT_CONFIRM_HEADER_KEEP="Será usada esta data e manter-se-á a hora original de cada elemento:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="hora original"
    TXT_CONFIRM_QUESTION="Tem a certeza de que pretende continuar? (s/n)"
    TXT_CANCELLED="Cancelado."
    TXT_PROCESSING_FOLDER="➜ A processar pasta:"
    TXT_DONE_FOLDER="✔ Datas alteradas em:"
    TXT_PROCESSING_FILE="➜ A processar ficheiro:"
    TXT_DONE_FILE="✔ Ficheiro actualizado:"
    TXT_NOT_FOUND="✖ Não encontrado:"
    TXT_FINISHED="Operação concluída."
    ;;
  uk)
    TXT_DRAG="Перетягніть файли або папки і натисніть Enter:"
    TXT_NO_INPUT="Шлях не отримано."
    TXT_SETFILE_MISSING="Команду SetFile не знайдено."
    TXT_INSTALL_XCODE="Встановіть інструменти командного рядка: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool не знайдено."
    TXT_EXIFTOOL_SKIPPED="ExifTool не встановлено. Внутрішні метадані не буде оновлено."
    TXT_YEAR_PROMPT="Введіть новий рік (РРРР):"
    TXT_MONTH_PROMPT="Введіть новий місяць (1-12):"
    TXT_DAY_PROMPT="Введіть новий день (1-31):"
    TXT_INVALID_NUMBER="Неприпустимий числовий формат."
    TXT_INVALID_YEAR="Неприпустимий формат року."
    TXT_INVALID_MONTH="Неприпустимий формат місяця."
    TXT_INVALID_DAY="Неприпустимий формат дня."
    TXT_INVALID_HOUR="Неприпустимий формат години."
    TXT_INVALID_MINUTE="Неприпустимий формат хвилин."
    TXT_MONTH_RANGE="Місяць поза діапазоном."
    TXT_DAY_RANGE="День поза діапазоном."
    TXT_HOUR_RANGE="Година поза діапазоном."
    TXT_MIN_RANGE="Хвилини поза діапазоном."
    TXT_INVALID_DATE="Вказана дата є недійсною."
    TXT_FUTURE_DATE="Майбутні дати не дозволені."
    TXT_RETRY="Спробуйте ще раз:"
    TXT_CHANGE_TIME="Бажаєте також змінити час? (y/n)"
    TXT_HOUR_PROMPT="Введіть годину (0-23):"
    TXT_MIN_PROMPT="Введіть хвилини (0-59):"
    TXT_CHANGE_SECONDS="Бажаєте також змінити секунди? (y/n)"
    TXT_SECONDS_PROMPT="Введіть секунди (0-59):"
    TXT_INVALID_SECOND="Неприпустимий формат секунд."
    TXT_SECOND_RANGE="Секунди поза діапазоном."
    TXT_INVALID_RESPONSE="Неприпустима відповідь. Спробуйте ще раз:"
    TXT_CONFIRM_HEADER="Ця дата створення буде використана для всіх елементів:"
    TXT_CONFIRM_HEADER_TIME="Ця дата й час створення будуть використані для всіх елементів:"
    TXT_CONFIRM_HEADER_KEEP="Буде використано цю дату й збережено початковий час кожного елемента:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="початковий час"
    TXT_CONFIRM_QUESTION="Ви впевнені, що хочете продовжити? (y/n)"
    TXT_CANCELLED="Скасовано."
    TXT_PROCESSING_FOLDER="➜ Обробка теки:"
    TXT_DONE_FOLDER="✔ Дати змінено в:"
    TXT_PROCESSING_FILE="➜ Обробка файла:"
    TXT_DONE_FILE="✔ Файл оновлено:"
    TXT_NOT_FOUND="✖ Не знайдено:"
    TXT_FINISHED="Операцію завершено."
    ;;
  ga)
    TXT_DRAG="Tarraing comhaid nó fillteáin agus brúigh Enter:"
    TXT_NO_INPUT="Níor fuarthas aon chonair."
    TXT_SETFILE_MISSING="Níor aimsíodh an t-ordú SetFile."
    TXT_INSTALL_XCODE="Suiteáil na huirlisí líne ordaithe leis: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Níor aimsíodh ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool gan suiteáil. Ní dhéanfar meiteashonraí inmheánacha a nuashonrú."
    TXT_YEAR_PROMPT="Iontráil an bhliain nua (BBBB):"
    TXT_MONTH_PROMPT="Iontráil an mhí nua (1-12):"
    TXT_DAY_PROMPT="Iontráil an lá nua (1-31):"
    TXT_INVALID_NUMBER="Formáid uimhreach neamhbhailí."
    TXT_INVALID_YEAR="Formáid bliana neamhbhailí."
    TXT_INVALID_MONTH="Formáid míosa neamhbhailí."
    TXT_INVALID_DAY="Formáid lae neamhbhailí."
    TXT_INVALID_HOUR="Formáid ama neamhbhailí."
    TXT_INVALID_MINUTE="Formáid nóiméad neamhbhailí."
    TXT_MONTH_RANGE="Mí lasmuigh den raon."
    TXT_DAY_RANGE="Lá lasmuigh den raon."
    TXT_HOUR_RANGE="Uair an chloig lasmuigh den raon."
    TXT_MIN_RANGE="Nóiméid lasmuigh den raon."
    TXT_INVALID_DATE="Níl an dáta tugtha bailí."
    TXT_FUTURE_DATE="Ní cheadaítear dátaí amach anseo."
    TXT_RETRY="Bain triail eile as:"
    TXT_CHANGE_TIME="An bhfuil fonn ort an t-am a athrú freisin? (y/n)"
    TXT_HOUR_PROMPT="Iontráil an t-am (0-23):"
    TXT_MIN_PROMPT="Iontráil na nóiméid (0-59):"
    TXT_CHANGE_SECONDS="An bhfuil fonn ort na soicindí a athrú freisin? (y/n)"
    TXT_SECONDS_PROMPT="Iontráil na soicindí (0-59):"
    TXT_INVALID_SECOND="Formáid soicindí neamhbhailí."
    TXT_SECOND_RANGE="Soicindí lasmuigh den raon."
    TXT_INVALID_RESPONSE="Freagra neamhbhailí. Bain triail eile as:"
    TXT_CONFIRM_HEADER="Bainfear úsáid as an dáta cruthaithe seo do gach mír:"
    TXT_CONFIRM_HEADER_TIME="Bainfear úsáid as an dáta agus am cruthaithe seo do gach mír:"
    TXT_CONFIRM_HEADER_KEEP="Bainfear úsáid as an dáta seo agus coimeádfar am bunaidh gach míre:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="am bunaidh"
    TXT_CONFIRM_QUESTION="An bhfuil tú cinnte gur mian leat leanúint ar aghaidh? (y/n)"
    TXT_CANCELLED="Cealaithe."
    TXT_PROCESSING_FOLDER="➜ Fillteán á phróiseáil:"
    TXT_DONE_FOLDER="✔ Dátaí athraithe i:"
    TXT_PROCESSING_FILE="➜ Comhad á phróiseáil:"
    TXT_DONE_FILE="✔ Comhad nuashonraithe:"
    TXT_NOT_FOUND="✖ Gan aimsiú:"
    TXT_FINISHED="Oibríocht críochnaithe."
    ;;
  sv)
    TXT_DRAG="Dra filer eller mappar och tryck Enter:"
    TXT_NO_INPUT="Ingen sökväg mottagen."
    TXT_SETFILE_MISSING="Kommandot SetFile hittades inte."
    TXT_INSTALL_XCODE="Installera kommandoradsverktyg med: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool hittades inte."
    TXT_EXIFTOOL_SKIPPED="ExifTool inte installerat. Interna metadata kommer inte att uppdateras."
    TXT_YEAR_PROMPT="Ange det nya året (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Ange den nya månaden (1-12):"
    TXT_DAY_PROMPT="Ange den nya dagen (1-31):"
    TXT_INVALID_NUMBER="Ogiltigt nummerformat."
    TXT_INVALID_YEAR="Ogiltigt årformat."
    TXT_INVALID_MONTH="Ogiltigt månadsformat."
    TXT_INVALID_DAY="Ogiltigt dagsformat."
    TXT_INVALID_HOUR="Ogiltigt tidsformat (timme)."
    TXT_INVALID_MINUTE="Ogiltigt tidsformat (minuter)."
    TXT_MONTH_RANGE="Månad utanför intervallet."
    TXT_DAY_RANGE="Dag utanför intervallet."
    TXT_HOUR_RANGE="Timme utanför intervallet."
    TXT_MIN_RANGE="Minuter utanför intervallet."
    TXT_INVALID_DATE="Angivet datum är ogiltigt."
    TXT_FUTURE_DATE="Framtida datum är inte tillåtna."
    TXT_RETRY="Försök igen:"
    TXT_CHANGE_TIME="Vill du även ändra tiden? (j/n)"
    TXT_HOUR_PROMPT="Ange timmen (0-23):"
    TXT_MIN_PROMPT="Ange minuterna (0-59):"
    TXT_CHANGE_SECONDS="Vill du även ändra sekunderna? (j/n)"
    TXT_SECONDS_PROMPT="Ange sekunderna (0-59):"
    TXT_INVALID_SECOND="Ogiltigt sekundformat."
    TXT_SECOND_RANGE="Sekunder utanför intervallet."
    TXT_INVALID_RESPONSE="Ogiltigt svar. Försök igen:"
    TXT_CONFIRM_HEADER="Detta skapelsedatum kommer att användas för alla objekt:"
    TXT_CONFIRM_HEADER_TIME="Detta skapelsedatum och denna tid kommer att användas för alla objekt:"
    TXT_CONFIRM_HEADER_KEEP="Detta datum kommer att användas och den ursprungliga tiden för varje objekt behålls:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="ursprunglig tid"
    TXT_CONFIRM_QUESTION="Är du säker på att du vill fortsätta? (j/n)"
    TXT_CANCELLED="Avbrutet."
    TXT_PROCESSING_FOLDER="➜ Bearbetar mapp:"
    TXT_DONE_FOLDER="✔ Datum ändrade i:"
    TXT_PROCESSING_FILE="➜ Bearbetar fil:"
    TXT_DONE_FILE="✔ Fil uppdaterad:"
    TXT_NOT_FOUND="✖ Hittades inte:"
    TXT_FINISHED="Åtgärden slutförd."
    ;;
  da)
    TXT_DRAG="Træk filer eller mapper hertil og tryk Enter:"
    TXT_NO_INPUT="Ingen sti modtaget."
    TXT_SETFILE_MISSING="Kommandoen SetFile blev ikke fundet."
    TXT_INSTALL_XCODE="Installer kommandolinjeværktøjer med: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool blev ikke fundet."
    TXT_EXIFTOOL_SKIPPED="ExifTool ikke installeret. Interne metadata vil ikke blive opdateret."
    TXT_YEAR_PROMPT="Indtast det nye år (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Indtast den nye måned (1-12):"
    TXT_DAY_PROMPT="Indtast den nye dag (1-31):"
    TXT_INVALID_NUMBER="Ugyldigt talformat."
    TXT_INVALID_YEAR="Ugyldigt årformat."
    TXT_INVALID_MONTH="Ugyldigt månedsformat."
    TXT_INVALID_DAY="Ugyldigt dagsformat."
    TXT_INVALID_HOUR="Ugyldigt timeformat."
    TXT_INVALID_MINUTE="Ugyldigt minutformat."
    TXT_MONTH_RANGE="Måned uden for intervallet."
    TXT_DAY_RANGE="Dag uden for intervallet."
    TXT_HOUR_RANGE="Time uden for intervallet."
    TXT_MIN_RANGE="Minutter uden for intervallet."
    TXT_INVALID_DATE="Den angivne dato er ugyldig."
    TXT_FUTURE_DATE="Fremtidige datoer er ikke tilladt."
    TXT_RETRY="Prøv igen:"
    TXT_CHANGE_TIME="Vil du også ændre klokkeslættet? (j/n)"
    TXT_HOUR_PROMPT="Indtast timen (0-23):"
    TXT_MIN_PROMPT="Indtast minutterne (0-59):"
    TXT_CHANGE_SECONDS="Vil du også ændre sekunderne? (j/n)"
    TXT_SECONDS_PROMPT="Indtast sekunderne (0-59):"
    TXT_INVALID_SECOND="Ugyldigt sekundformat."
    TXT_SECOND_RANGE="Sekunder uden for intervallet."
    TXT_INVALID_RESPONSE="Ugyldigt svar. Prøv igen:"
    TXT_CONFIRM_HEADER="Denne oprettelsesdato vil blive brugt for alle elementer:"
    TXT_CONFIRM_HEADER_TIME="Denne oprettelsesdato og -tid vil blive brugt for alle elementer:"
    TXT_CONFIRM_HEADER_KEEP="Denne dato vil blive brugt og det oprindelige klokkeslæt for hvert element bevares:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="oprindeligt klokkeslæt"
    TXT_CONFIRM_QUESTION="Er du sikker på, at du vil fortsætte? (j/n)"
    TXT_CANCELLED="Annulleret."
    TXT_PROCESSING_FOLDER="➜ Behandler mappe:"
    TXT_DONE_FOLDER="✔ Datoer ændret i:"
    TXT_PROCESSING_FILE="➜ Behandler fil:"
    TXT_DONE_FILE="✔ Fil opdateret:"
    TXT_NOT_FOUND="✖ Ikke fundet:"
    TXT_FINISHED="Handling fuldført."
    ;;
  nl)
    TXT_DRAG="Sleep bestanden of mappen en druk op Enter:"
    TXT_NO_INPUT="Geen pad ontvangen."
    TXT_SETFILE_MISSING="Commando SetFile niet gevonden."
    TXT_INSTALL_XCODE="Installeer de commandoregeltools met: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool niet gevonden."
    TXT_EXIFTOOL_SKIPPED="ExifTool niet geïnstalleerd. Interne metadata worden niet bijgewerkt."
    TXT_YEAR_PROMPT="Voer het nieuwe jaar in (JJJJ):"
    TXT_MONTH_PROMPT="Voer de nieuwe maand in (1-12):"
    TXT_DAY_PROMPT="Voer de nieuwe dag in (1-31):"
    TXT_INVALID_NUMBER="Ongeldig numeriek formaat."
    TXT_INVALID_YEAR="Ongeldig jaarformaat."
    TXT_INVALID_MONTH="Ongeldig maandformaat."
    TXT_INVALID_DAY="Ongeldig dagformaat."
    TXT_INVALID_HOUR="Ongeldig urenformaat."
    TXT_INVALID_MINUTE="Ongeldig minutenformaat."
    TXT_MONTH_RANGE="Maand buiten bereik."
    TXT_DAY_RANGE="Dag buiten bereik."
    TXT_HOUR_RANGE="Uur buiten bereik."
    TXT_MIN_RANGE="Minuten buiten bereik."
    TXT_INVALID_DATE="De opgegeven datum is ongeldig."
    TXT_FUTURE_DATE="Toekomstige datums zijn niet toegestaan."
    TXT_RETRY="Probeer opnieuw:"
    TXT_CHANGE_TIME="Wil je ook de tijd veranderen? (j/n)"
    TXT_HOUR_PROMPT="Voer het uur in (0-23):"
    TXT_MIN_PROMPT="Voer de minuten in (0-59):"
    TXT_CHANGE_SECONDS="Wil je ook de seconden veranderen? (j/n)"
    TXT_SECONDS_PROMPT="Voer de seconden in (0-59):"
    TXT_INVALID_SECOND="Ongeldig secondenformaat."
    TXT_SECOND_RANGE="Seconden buiten bereik."
    TXT_INVALID_RESPONSE="Ongeldig antwoord. Probeer opnieuw:"
    TXT_CONFIRM_HEADER="Deze aanmaakdatum wordt gebruikt voor alle items:"
    TXT_CONFIRM_HEADER_TIME="Deze aanmaakdatum en tijd worden gebruikt voor alle items:"
    TXT_CONFIRM_HEADER_KEEP="Deze datum wordt gebruikt en de oorspronkelijke tijd van elk item blijft behouden:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="oorspronkelijke tijd"
    TXT_CONFIRM_QUESTION="Weet je zeker dat je wilt doorgaan? (j/n)"
    TXT_CANCELLED="Geannuleerd."
    TXT_PROCESSING_FOLDER="➜ Map wordt verwerkt:"
    TXT_DONE_FOLDER="✔ Datums gewijzigd in:"
    TXT_PROCESSING_FILE="➜ Bestand wordt verwerkt:"
    TXT_DONE_FILE="✔ Bestand bijgewerkt:"
    TXT_NOT_FOUND="✖ Niet gevonden:"
    TXT_FINISHED="Bewerking voltooid."
    ;;
  no|nb|nn)
    TXT_DRAG="Dra filer eller mapper og trykk Enter:"
    TXT_NO_INPUT="Ingen sti mottatt."
    TXT_SETFILE_MISSING="SetFile-kommandoen ble ikke funnet."
    TXT_INSTALL_XCODE="Installer kommandolinjeverktøy med: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool ble ikke funnet."
    TXT_EXIFTOOL_SKIPPED="ExifTool ikke installert. Interne metadata vil ikke bli oppdatert."
    TXT_YEAR_PROMPT="Skriv inn det nye året (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Skriv inn den nye måneden (1-12):"
    TXT_DAY_PROMPT="Skriv inn den nye dagen (1-31):"
    TXT_INVALID_NUMBER="Ugyldig tallformat."
    TXT_INVALID_YEAR="Ugyldig årformat."
    TXT_INVALID_MONTH="Ugyldig månedsformat."
    TXT_INVALID_DAY="Ugyldig dagsformat."
    TXT_INVALID_HOUR="Ugyldig timeformat."
    TXT_INVALID_MINUTE="Ugyldig minuttsformat."
    TXT_MONTH_RANGE="Måned utenfor gyldig område."
    TXT_DAY_RANGE="Dag utenfor gyldig område."
    TXT_HOUR_RANGE="Time utenfor gyldig område."
    TXT_MIN_RANGE="Minutter utenfor gyldig område."
    TXT_INVALID_DATE="Den angitte datoen er ugyldig."
    TXT_FUTURE_DATE="Fremtidige datoer er ikke tillatt."
    TXT_RETRY="Prøv igjen:"
    TXT_CHANGE_TIME="Vil du også endre klokkeslettet? (j/n)"
    TXT_HOUR_PROMPT="Skriv inn timen (0-23):"
    TXT_MIN_PROMPT="Skriv inn minuttene (0-59):"
    TXT_CHANGE_SECONDS="Vil du også endre sekundene? (j/n)"
    TXT_SECONDS_PROMPT="Skriv inn sekundene (0-59):"
    TXT_INVALID_SECOND="Ugyldig sekundformat."
    TXT_SECOND_RANGE="Sekunder utenfor gyldig område."
    TXT_INVALID_RESPONSE="Ugyldig svar. Prøv igjen:"
    TXT_CONFIRM_HEADER="Denne opprettelsesdatoen vil bli brukt for alle elementer:"
    TXT_CONFIRM_HEADER_TIME="Denne opprettelsesdatoen og -tiden vil bli brukt for alle elementer:"
    TXT_CONFIRM_HEADER_KEEP="Denne datoen vil bli brukt og det opprinnelige klokkeslettet til hvert element beholdes:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="opprinnelig klokkeslett"
    TXT_CONFIRM_QUESTION="Er du sikker på at du vil fortsette? (j/n)"
    TXT_CANCELLED="Avbrutt."
    TXT_PROCESSING_FOLDER="➜ Behandler mappe:"
    TXT_DONE_FOLDER="✔ Datoer endret i:"
    TXT_PROCESSING_FILE="➜ Behandler fil:"
    TXT_DONE_FILE="✔ Fil oppdatert:"
    TXT_NOT_FOUND="✖ Ikke funnet:"
    TXT_FINISHED="Operasjon fullført."
    ;;
  is)
    TXT_DRAG="Dragðu skrár eða möppur og ýttu á Enter:"
    TXT_NO_INPUT="Enginn slóð móttekin."
    TXT_SETFILE_MISSING="SetFile skipunin fannst ekki."
    TXT_INSTALL_XCODE="Settu upp skipanalínutól með: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool fannst ekki."
    TXT_EXIFTOOL_SKIPPED="ExifTool ekki sett upp. Innri lýsigögn verða ekki uppfærð."
    TXT_YEAR_PROMPT="Sláðu inn nýtt ár (ÁÁÁÁ):"
    TXT_MONTH_PROMPT="Sláðu inn nýjan mánuð (1-12):"
    TXT_DAY_PROMPT="Sláðu inn nýjan dag (1-31):"
    TXT_INVALID_NUMBER="Ógilt talnasnið."
    TXT_INVALID_YEAR="Ógilt ársnið."
    TXT_INVALID_MONTH="Ógilt mánaðarsnið."
    TXT_INVALID_DAY="Ógilt dagsnið."
    TXT_INVALID_HOUR="Ógilt tímastundarsnið."
    TXT_INVALID_MINUTE="Ógilt mínútnasnið."
    TXT_MONTH_RANGE="Mánuður utan marka."
    TXT_DAY_RANGE="Dagur utan marka."
    TXT_HOUR_RANGE="Klukkustund utan marka."
    TXT_MIN_RANGE="Mínútur utan marka."
    TXT_INVALID_DATE="Uppgefin dagsetning er ógild."
    TXT_FUTURE_DATE="Framtíðardagsetningar eru ekki leyfðar."
    TXT_RETRY="Reyndu aftur:"
    TXT_CHANGE_TIME="Viltu líka breyta tímanum? (j/n)"
    TXT_HOUR_PROMPT="Sláðu inn klukkustund (0-23):"
    TXT_MIN_PROMPT="Sláðu inn mínútur (0-59):"
    TXT_CHANGE_SECONDS="Viltu líka breyta sekúndum? (j/n)"
    TXT_SECONDS_PROMPT="Sláðu inn sekúndur (0-59):"
    TXT_INVALID_SECOND="Ógilt sekúndusnið."
    TXT_SECOND_RANGE="Sekúndur utan marka."
    TXT_INVALID_RESPONSE="Ógilt svar. Reyndu aftur:"
    TXT_CONFIRM_HEADER="Þessi stofndagsetning verður notuð fyrir öll atriði:"
    TXT_CONFIRM_HEADER_TIME="Þessi stofndagsetning og -tími verða notuð fyrir öll atriði:"
    TXT_CONFIRM_HEADER_KEEP="Þessi dagsetning verður notuð og upprunalegur tími hvers atriðis varðveittur:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="upprunalegur tími"
    TXT_CONFIRM_QUESTION="Ertu viss um að þú viljir halda áfram? (j/n)"
    TXT_CANCELLED="Hætt við."
    TXT_PROCESSING_FOLDER="➜ Vinn með möppu:"
    TXT_DONE_FOLDER="✔ Dagsetningar breyttar í:"
    TXT_PROCESSING_FILE="➜ Vinn með skrá:"
    TXT_DONE_FILE="✔ Skrá uppfærð:"
    TXT_NOT_FOUND="✖ Fannst ekki:"
    TXT_FINISHED="Aðgerð lokið."
    ;;
  fi)
    TXT_DRAG="Vedä tiedostoja tai kansioita ja paina Enter:"
    TXT_NO_INPUT="Polkua ei vastaanotettu."
    TXT_SETFILE_MISSING="SetFile-komentoa ei löydy."
    TXT_INSTALL_XCODE="Asenna komentorivityökalut komennolla: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifToolia ei löydy."
    TXT_EXIFTOOL_SKIPPED="ExifToolia ei asennettu. Sisäisiä metatietoja ei päivitetä."
    TXT_YEAR_PROMPT="Anna uusi vuosi (VVVV):"
    TXT_MONTH_PROMPT="Anna uusi kuukausi (1-12):"
    TXT_DAY_PROMPT="Anna uusi päivä (1-31):"
    TXT_INVALID_NUMBER="Virheellinen numeroformaatti."
    TXT_INVALID_YEAR="Virheellinen vuosimuoto."
    TXT_INVALID_MONTH="Virheellinen kuukausimuoto."
    TXT_INVALID_DAY="Virheellinen päivämuoto."
    TXT_INVALID_HOUR="Virheellinen tuntimuoto."
    TXT_INVALID_MINUTE="Virheellinen minuuttimuoto."
    TXT_MONTH_RANGE="Kuukausi sallitun alueen ulkopuolella."
    TXT_DAY_RANGE="Päivä sallitun alueen ulkopuolella."
    TXT_HOUR_RANGE="Tunti sallitun alueen ulkopuolella."
    TXT_MIN_RANGE="Minuutit sallitun alueen ulkopuolella."
    TXT_INVALID_DATE="Annettu päivämäärä ei ole kelvollinen."
    TXT_FUTURE_DATE="Tulevat päivämäärät eivät ole sallittuja."
    TXT_RETRY="Yritä uudelleen:"
    TXT_CHANGE_TIME="Haluatko myös vaihtaa ajan? (k/e)"
    TXT_HOUR_PROMPT="Anna tunti (0-23):"
    TXT_MIN_PROMPT="Anna minuutit (0-59):"
    TXT_CHANGE_SECONDS="Haluatko myös muuttaa sekunnit? (k/e)"
    TXT_SECONDS_PROMPT="Anna sekunnit (0-59):"
    TXT_INVALID_SECOND="Virheellinen sekuntimuoto."
    TXT_SECOND_RANGE="Sekunnit alueen ulkopuolella."
    TXT_INVALID_RESPONSE="Virheellinen vastaus. Yritä uudelleen:"
    TXT_CONFIRM_HEADER="Tätä luontipäivää käytetään kaikille kohteille:"
    TXT_CONFIRM_HEADER_TIME="Tätä luontipäivää ja -aikaa käytetään kaikille kohteille:"
    TXT_CONFIRM_HEADER_KEEP="Tätä päivää käytetään ja kunkin kohteen alkuperäinen aika säilytetään:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="alkuperäinen aika"
    TXT_CONFIRM_QUESTION="Haluatko varmasti jatkaa? (k/e)"
    TXT_CANCELLED="Peruutettu."
    TXT_PROCESSING_FOLDER="➜ Käsitellään kansiota:"
    TXT_DONE_FOLDER="✔ Päivämääriä muutettu kohteessa:"
    TXT_PROCESSING_FILE="➜ Käsitellään tiedostoa:"
    TXT_DONE_FILE="✔ Tiedosto päivitetty:"
    TXT_NOT_FOUND="✖ Ei löytynyt:"
    TXT_FINISHED="Toiminto suoritettu."
    ;;
  zh)
    TXT_DRAG="拖动文件或文件夹并按 Enter："
    TXT_NO_INPUT="未接收到路径。"
    TXT_SETFILE_MISSING="未找到 SetFile 命令。"
    TXT_INSTALL_XCODE="请使用以下命令安装命令行工具：xcode-select --install"
    TXT_EXIFTOOL_MISSING="未找到 ExifTool。"
    TXT_EXIFTOOL_SKIPPED="未安装 ExifTool。内部元数据不会更新。"
    TXT_YEAR_PROMPT="请输入新的年份 (YYYY)："
    TXT_MONTH_PROMPT="请输入新的月份 (1-12)："
    TXT_DAY_PROMPT="请输入新的日期 (1-31)："
    TXT_INVALID_NUMBER="数字格式无效。"
    TXT_INVALID_YEAR="年份格式无效。"
    TXT_INVALID_MONTH="月份格式无效。"
    TXT_INVALID_DAY="日期格式无效。"
    TXT_INVALID_HOUR="小时格式无效。"
    TXT_INVALID_MINUTE="分钟格式无效。"
    TXT_MONTH_RANGE="月份超出范围。"
    TXT_DAY_RANGE="日期超出范围。"
    TXT_HOUR_RANGE="小时超出范围。"
    TXT_MIN_RANGE="分钟超出范围。"
    TXT_INVALID_DATE="指定的日期无效。"
    TXT_FUTURE_DATE="不允许未来的日期。"
    TXT_RETRY="请重试："
    TXT_CHANGE_TIME="是否也要更改时间？(y/n)"
    TXT_HOUR_PROMPT="请输入小时 (0-23)："
    TXT_MIN_PROMPT="请输入分钟 (0-59)："
    TXT_CHANGE_SECONDS="是否也要更改秒数？(y/n)"
    TXT_SECONDS_PROMPT="请输入秒数 (0-59)："
    TXT_INVALID_SECOND="秒数格式无效。"
    TXT_SECOND_RANGE="秒数超出范围。"
    TXT_INVALID_RESPONSE="无效的响应。请重试："
    TXT_CONFIRM_HEADER="以下创建日期将用于所有项目："
    TXT_CONFIRM_HEADER_TIME="以下创建日期和时间将用于所有项目："
    TXT_CONFIRM_HEADER_KEEP="将使用此日期，并保留每个项目的原始时间："
    TXT_ORIGINAL_TIME_PLACEHOLDER="原始时间"
    TXT_CONFIRM_QUESTION="确定要继续吗？(y/n)"
    TXT_CANCELLED="已取消。"
    TXT_PROCESSING_FOLDER="➜ 正在处理文件夹："
    TXT_DONE_FOLDER="✔ 已更改日期："
    TXT_PROCESSING_FILE="➜ 正在处理文件："
    TXT_DONE_FILE="✔ 文件已更新："
    TXT_NOT_FOUND="✖ 未找到："
    TXT_FINISHED="操作完成。"
    ;;
  ja)
    TXT_DRAG="ファイルまたはフォルダをドラッグして Enter を押してください:"
    TXT_NO_INPUT="パスが受信されませんでした。"
    TXT_SETFILE_MISSING="SetFile コマンドが見つかりません。"
    TXT_INSTALL_XCODE="次のコマンドでコマンドラインツールをインストールしてください: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool が見つかりません。"
    TXT_EXIFTOOL_SKIPPED="ExifTool はインストールされていません。内部メタデータは更新されません。"
    TXT_YEAR_PROMPT="新しい年 (YYYY) を入力してください:"
    TXT_MONTH_PROMPT="新しい月 (1-12) を入力してください:"
    TXT_DAY_PROMPT="新しい日 (1-31) を入力してください:"
    TXT_INVALID_NUMBER="数値の形式が無効です。"
    TXT_INVALID_YEAR="年の形式が無効です。"
    TXT_INVALID_MONTH="月の形式が無効です。"
    TXT_INVALID_DAY="日の形式が無効です。"
    TXT_INVALID_HOUR="時刻（時）の形式が無効です。"
    TXT_INVALID_MINUTE="時刻（分）の形式が無効です。"
    TXT_MONTH_RANGE="月が範囲外です。"
    TXT_DAY_RANGE="日が範囲外です。"
    TXT_HOUR_RANGE="時が範囲外です。"
    TXT_MIN_RANGE="分が範囲外です。"
    TXT_INVALID_DATE="指定された日付は無効です。"
    TXT_FUTURE_DATE="未来の日付は許可されていません。"
    TXT_RETRY="もう一度入力してください:"
    TXT_CHANGE_TIME="時間も変更しますか？ (y/n)"
    TXT_HOUR_PROMPT="時 (0-23) を入力してください:"
    TXT_MIN_PROMPT="分 (0-59) を入力してください:"
    TXT_CHANGE_SECONDS="秒も変更しますか？ (y/n)"
    TXT_SECONDS_PROMPT="秒を入力してください (0-59):"
    TXT_INVALID_SECOND="秒の形式が無効です。"
    TXT_SECOND_RANGE="秒が範囲外です。"
    TXT_INVALID_RESPONSE="無効な回答です。もう一度入力してください:"
    TXT_CONFIRM_HEADER="この作成日時がすべての項目に使用されます:"
    TXT_CONFIRM_HEADER_TIME="この作成日時と時刻がすべての項目に使用されます:"
    TXT_CONFIRM_HEADER_KEEP="この日付を使用し、各項目の元の時刻を維持します:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="元の時刻"
    TXT_CONFIRM_QUESTION="続行してよろしいですか？ (y/n)"
    TXT_CANCELLED="キャンセルされました。"
    TXT_PROCESSING_FOLDER="➜ フォルダを処理中:"
    TXT_DONE_FOLDER="✔ 日付を変更しました:"
    TXT_PROCESSING_FILE="➜ ファイルを処理中:"
    TXT_DONE_FILE="✔ ファイルを更新しました:"
    TXT_NOT_FOUND="✖ 見つかりません:"
    TXT_FINISHED="操作が完了しました。"
    ;;
  ko)
    TXT_DRAG="파일이나 폴더를 끌어다 놓고 Enter 키를 누르세요:"
    TXT_NO_INPUT="경로가 입력되지 않았습니다."
    TXT_SETFILE_MISSING="SetFile 명령을 찾을 수 없습니다."
    TXT_INSTALL_XCODE="다음 명령으로 커맨드 라인 도구를 설치하세요: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool을 찾을 수 없습니다."
    TXT_EXIFTOOL_SKIPPED="ExifTool이 설치되지 않았습니다. 내부 메타데이터가 업데이트되지 않습니다."
    TXT_YEAR_PROMPT="새 연도 (YYYY)를 입력하세요:"
    TXT_MONTH_PROMPT="새 달 (1-12)을 입력하세요:"
    TXT_DAY_PROMPT="새 날짜 (1-31)를 입력하세요:"
    TXT_INVALID_NUMBER="잘못된 숫자 형식입니다."
    TXT_INVALID_YEAR="잘못된 연도 형식입니다."
    TXT_INVALID_MONTH="잘못된 월 형식입니다."
    TXT_INVALID_DAY="잘못된 날짜 형식입니다."
    TXT_INVALID_HOUR="잘못된 시 형식입니다."
    TXT_INVALID_MINUTE="잘못된 분 형식입니다."
    TXT_MONTH_RANGE="월이 범위를 벗어났습니다."
    TXT_DAY_RANGE="날짜가 범위를 벗어났습니다."
    TXT_HOUR_RANGE="시가 범위를 벗어났습니다."
    TXT_MIN_RANGE="분이 범위를 벗어났습니다."
    TXT_INVALID_DATE="입력한 날짜가 유효하지 않습니다."
    TXT_FUTURE_DATE="미래 날짜는 허용되지 않습니다."
    TXT_RETRY="다시 시도하세요:"
    TXT_CHANGE_TIME="시간도 변경하시겠습니까? (y/n)"
    TXT_HOUR_PROMPT="시를 입력하세요 (0-23):"
    TXT_MIN_PROMPT="분을 입력하세요 (0-59):"
    TXT_CHANGE_SECONDS="초도 변경하시겠습니까? (y/n)"
    TXT_SECONDS_PROMPT="초를 입력하세요 (0-59):"
    TXT_INVALID_SECOND="초 형식이 유효하지 않습니다."
    TXT_SECOND_RANGE="초가 범위를 벗어났습니다."
    TXT_INVALID_RESPONSE="잘못된 응답입니다. 다시 시도하세요:"
    TXT_CONFIRM_HEADER="이 생성 날짜가 모든 항목에 사용됩니다:"
    TXT_CONFIRM_HEADER_TIME="이 생성 날짜와 시간이 모든 항목에 사용됩니다:"
    TXT_CONFIRM_HEADER_KEEP="이 날짜를 사용하고 각 항목의 원래 시간을 유지합니다:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="원래 시간"
    TXT_CONFIRM_QUESTION="계속하시겠습니까? (y/n)"
    TXT_CANCELLED="취소되었습니다."
    TXT_PROCESSING_FOLDER="➜ 폴더 처리 중:"
    TXT_DONE_FOLDER="✔ 날짜가 변경되었습니다:"
    TXT_PROCESSING_FILE="➜ 파일 처리 중:"
    TXT_DONE_FILE="✔ 파일이 업데이트되었습니다:"
    TXT_NOT_FOUND="✖ 찾을 수 없음:"
    TXT_FINISHED="작업이 완료되었습니다."
    ;;
  vi)
    TXT_DRAG="Kéo thả tệp hoặc thư mục rồi nhấn Enter:"
    TXT_NO_INPUT="Không nhận được đường dẫn."
    TXT_SETFILE_MISSING="Không tìm thấy lệnh SetFile."
    TXT_INSTALL_XCODE="Cài đặt công cụ dòng lệnh với: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Không tìm thấy ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool chưa được cài đặt. Siêu dữ liệu nội bộ sẽ không được cập nhật."
    TXT_YEAR_PROMPT="Nhập năm mới (YYYY):"
    TXT_MONTH_PROMPT="Nhập tháng mới (1-12):"
    TXT_DAY_PROMPT="Nhập ngày mới (1-31):"
    TXT_INVALID_NUMBER="Định dạng số không hợp lệ."
    TXT_INVALID_YEAR="Định dạng năm không hợp lệ."
    TXT_INVALID_MONTH="Định dạng tháng không hợp lệ."
    TXT_INVALID_DAY="Định dạng ngày không hợp lệ."
    TXT_INVALID_HOUR="Định dạng giờ không hợp lệ."
    TXT_INVALID_MINUTE="Định dạng phút không hợp lệ."
    TXT_MONTH_RANGE="Tháng nằm ngoài phạm vi."
    TXT_DAY_RANGE="Ngày nằm ngoài phạm vi."
    TXT_HOUR_RANGE="Giờ nằm ngoài phạm vi."
    TXT_MIN_RANGE="Phút nằm ngoài phạm vi."
    TXT_INVALID_DATE="Ngày được chỉ định không hợp lệ."
    TXT_FUTURE_DATE="Không cho phép ngày trong tương lai."
    TXT_RETRY="Hãy thử lại:"
    TXT_CHANGE_TIME="Bạn có muốn đổi cả giờ không? (y/n)"
    TXT_HOUR_PROMPT="Nhập giờ (0-23):"
    TXT_MIN_PROMPT="Nhập phút (0-59):"
    TXT_CHANGE_SECONDS="Bạn có muốn đổi cả giây không? (y/n)"
    TXT_SECONDS_PROMPT="Nhập giây (0-59):"
    TXT_INVALID_SECOND="Định dạng giây không hợp lệ."
    TXT_SECOND_RANGE="Giây ngoài phạm vi."
    TXT_INVALID_RESPONSE="Phản hồi không hợp lệ. Hãy thử lại:"
    TXT_CONFIRM_HEADER="Ngày tạo này sẽ được dùng cho tất cả các mục:"
    TXT_CONFIRM_HEADER_TIME="Ngày và giờ tạo này sẽ được dùng cho tất cả các mục:"
    TXT_CONFIRM_HEADER_KEEP="Ngày này sẽ được dùng và giữ nguyên giờ gốc của từng mục:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="giờ gốc"
    TXT_CONFIRM_QUESTION="Bạn có chắc muốn tiếp tục? (y/n)"
    TXT_CANCELLED="Đã hủy."
    TXT_PROCESSING_FOLDER="➜ Đang xử lý thư mục:"
    TXT_DONE_FOLDER="✔ Đã thay đổi ngày trong:"
    TXT_PROCESSING_FILE="➜ Đang xử lý tệp:"
    TXT_DONE_FILE="✔ Tệp đã được cập nhật:"
    TXT_NOT_FOUND="✖ Không tìm thấy:"
    TXT_FINISHED="Hoàn tất thao tác."
    ;;
  mn)
    TXT_DRAG="Файл эсвэл хавтас чирээд Enter дарна уу:"
    TXT_NO_INPUT="Ямар ч зам хүлээн аваагүй."
    TXT_SETFILE_MISSING="SetFile командыг олсонгүй."
    TXT_INSTALL_XCODE="Командын мөрийн хэрэгслийг дараах командaar суулгана уу: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool командыг олсонгүй."
    TXT_EXIFTOOL_SKIPPED="ExifTool суулгаагүй. Дотоод метадата шинэчлэгдэхгүй."
    TXT_YEAR_PROMPT="Шинэ жилийг оруулна уу (YYYY):"
    TXT_MONTH_PROMPT="Шинэ сарыг оруулна уу (1-12):"
    TXT_DAY_PROMPT="Шинэ өдрийг оруулна уу (1-31):"
    TXT_INVALID_NUMBER="Тооны формат буруу байна."
    TXT_INVALID_YEAR="Жилийн формат буруу байна."
    TXT_INVALID_MONTH="Сарын формат буруу байна."
    TXT_INVALID_DAY="Өдрийн формат буруу байна."
    TXT_INVALID_HOUR="Цагийн формат буруу байна."
    TXT_INVALID_MINUTE="Минутын формат буруу байна."
    TXT_MONTH_RANGE="Сар хязгаараас гадуур байна."
    TXT_DAY_RANGE="Өдөр хязгаараас гадуур байна."
    TXT_HOUR_RANGE="Цаг хязгаараас гадуур байна."
    TXT_MIN_RANGE="Минут хязгаараас гадуур байна."
    TXT_INVALID_DATE="Оруулсан огноо хүчин төгөлдөр биш."
    TXT_FUTURE_DATE="Ирээдүйн огноог зөвшөөрөхгүй."
    TXT_RETRY="Дахин оролдоно уу:"
    TXT_CHANGE_TIME="Цагийг мөн өөрчлөх үү? (y/n)"
    TXT_HOUR_PROMPT="Цаг оруулна уу (0-23):"
    TXT_MIN_PROMPT="Минут оруулна уу (0-59):"
    TXT_CHANGE_SECONDS="Секундыг мөн өөрчлөх үү? (y/n)"
    TXT_SECONDS_PROMPT="Секундыг оруулна уу (0-59):"
    TXT_INVALID_SECOND="Секундын формат буруу."
    TXT_SECOND_RANGE="Секунд хязгаараас гадуур."
    TXT_INVALID_RESPONSE="Буруу хариулт. Дахин оролдоно уу:"
    TXT_CONFIRM_HEADER="Энэ үүсгэсэн огноо бүх элементэд ашиглагдана:"
    TXT_CONFIRM_HEADER_TIME="Энэ үүсгэсэн огноо болон цаг бүх элементэд ашиглагдана:"
    TXT_CONFIRM_HEADER_KEEP="Энэ огноог ашиглаж, элемент бүрийн анхны цагийг хадгална:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="анхны цаг"
    TXT_CONFIRM_QUESTION="Үргэлжлүүлэхдээ итгэлтэй байна уу? (y/n)"
    TXT_CANCELLED="Цуцлагдсан."
    TXT_PROCESSING_FOLDER="➜ Хавтасыг боловсруулж байна:"
    TXT_DONE_FOLDER="✔ Огноог энд өөрчиллөө:"
    TXT_PROCESSING_FILE="➜ Файлыг боловсруулж байна:"
    TXT_DONE_FILE="✔ Файл шинэчлэгдлээ:"
    TXT_NOT_FOUND="✖ Олдсонгүй:"
    TXT_FINISHED="Үйлдэл дууслаа."
    ;;
  hi)
    TXT_DRAG="फ़ाइल या फ़ोल्डर खींचकर छोड़ें और Enter दबाएँ:"
    TXT_NO_INPUT="कोई पथ प्राप्त नहीं हुआ।"
    TXT_SETFILE_MISSING="SetFile कमांड नहीं मिला।"
    TXT_INSTALL_XCODE="कमांड लाइन टूल्स इंस्टॉल करें: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool नहीं मिला।"
    TXT_EXIFTOOL_SKIPPED="ExifTool इंस्टॉल नहीं है। आंतरिक मेटाडेटा अपडेट नहीं होंगे।"
    TXT_YEAR_PROMPT="नया वर्ष दर्ज करें (YYYY):"
    TXT_MONTH_PROMPT="नया महीना दर्ज करें (1-12):"
    TXT_DAY_PROMPT="नया दिन दर्ज करें (1-31):"
    TXT_INVALID_NUMBER="अमान्य संख्या स्वरूप."
    TXT_INVALID_YEAR="अमान्य वर्ष स्वरूप."
    TXT_INVALID_MONTH="अमान्य महीना स्वरूप."
    TXT_INVALID_DAY="अमान्य दिन स्वरूप."
    TXT_INVALID_HOUR="अमान्य घंटे का स्वरूप."
    TXT_INVALID_MINUTE="अमान्य मिनट का स्वरूप."
    TXT_MONTH_RANGE="महीना सीमा से बाहर है."
    TXT_DAY_RANGE="दिन सीमा से बाहर है."
    TXT_HOUR_RANGE="घंटा सीमा से बाहर है."
    TXT_MIN_RANGE="मिनट सीमा से बाहर हैं."
    TXT_INVALID_DATE="दिया गया दिनांक मान्य नहीं है."
    TXT_FUTURE_DATE="भविष्य की तिथियाँ अनुमत नहीं हैं."
    TXT_RETRY="फिर से कोशिश करें:"
    TXT_CHANGE_TIME="क्या आप समय भी बदलना चाहते हैं? (y/n)"
    TXT_HOUR_PROMPT="घंटे दर्ज करें (0-23):"
    TXT_MIN_PROMPT="मिनट दर्ज करें (0-59):"
    TXT_CHANGE_SECONDS="क्या आप सेकंड भी बदलना चाहते हैं? (y/n)"
    TXT_SECONDS_PROMPT="सेकंड दर्ज करें (0-59):"
    TXT_INVALID_SECOND="सेकंड का प्रारूप मान्य नहीं है।"
    TXT_SECOND_RANGE="सेकंड सीमा से बाहर हैं।"
    TXT_INVALID_RESPONSE="अमान्य उत्तर. फिर से कोशिश करें:"
    TXT_CONFIRM_HEADER="यह निर्माण तिथि सभी आइटम के लिए उपयोग की जाएगी:"
    TXT_CONFIRM_HEADER_TIME="यह निर्माण तिथि और समय सभी आइटम के लिए उपयोग किए जाएँगे:"
    TXT_CONFIRM_HEADER_KEEP="इस तिथि का उपयोग होगा और प्रत्येक आइटम का मूल समय रखा जाएगा:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="मूल समय"
    TXT_CONFIRM_QUESTION="क्या आप वाकई जारी रखना चाहते हैं? (y/n)"
    TXT_CANCELLED="रद्द किया गया."
    TXT_PROCESSING_FOLDER="➜ फ़ोल्डर संसाधित किया जा रहा है:"
    TXT_DONE_FOLDER="✔ यहाँ तिथियाँ बदली गईं:"
    TXT_PROCESSING_FILE="➜ फ़ाइल संसाधित की जा रही है:"
    TXT_DONE_FILE="✔ फ़ाइल अपडेट कर दी गई है:"
    TXT_NOT_FOUND="✖ नहीं मिला:"
    TXT_FINISHED="प्रक्रिया पूरी हुई."
    ;;
  lv)
    TXT_DRAG="Velciet failus vai mapes un nospiediet Enter:"
    TXT_NO_INPUT="Ceļš nav saņemts."
    TXT_SETFILE_MISSING="Komanda SetFile nav atrasta."
    TXT_INSTALL_XCODE="Instalējiet komandrindas rīkus ar: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nav atrasts."
    TXT_EXIFTOOL_SKIPPED="ExifTool nav instalēts. Iekšējie metadati netiks atjaunināti."
    TXT_YEAR_PROMPT="Ievadiet jauno gadu (YYYY):"
    TXT_MONTH_PROMPT="Ievadiet jauno mēnesi (1-12):"
    TXT_DAY_PROMPT="Ievadiet jauno dienu (1-31):"
    TXT_INVALID_NUMBER="Nederīgs skaitļa formāts."
    TXT_INVALID_YEAR="Nederīgs gada formāts."
    TXT_INVALID_MONTH="Nederīgs mēneša formāts."
    TXT_INVALID_DAY="Nederīgs dienas formāts."
    TXT_INVALID_HOUR="Nederīgs stundas formāts."
    TXT_INVALID_MINUTE="Nederīgs minūšu formāts."
    TXT_MONTH_RANGE="Mēnesis ir ārpus diapazona."
    TXT_DAY_RANGE="Diena ir ārpus diapazona."
    TXT_HOUR_RANGE="Stunda ir ārpus diapazona."
    TXT_MIN_RANGE="Minūtes ir ārpus diapazona."
    TXT_INVALID_DATE="Norādītais datums nav derīgs."
    TXT_FUTURE_DATE="Nākotnes datumi nav atļauti."
    TXT_RETRY="Mēģiniet vēlreiz:"
    TXT_CHANGE_TIME="Vai vēlaties mainīt arī laiku? (y/n)"
    TXT_HOUR_PROMPT="Ievadiet stundu (0-23):"
    TXT_MIN_PROMPT="Ievadiet minūtes (0-59):"
    TXT_CHANGE_SECONDS="Vai vēlaties mainīt arī sekundes? (y/n)"
    TXT_SECONDS_PROMPT="Ievadiet sekundes (0-59):"
    TXT_INVALID_SECOND="Nederīgs sekunžu formāts."
    TXT_SECOND_RANGE="Sekundes ārpus diapazona."
    TXT_INVALID_RESPONSE="Nederīga atbilde. Mēģiniet vēlreiz:"
    TXT_CONFIRM_HEADER="Šis izveides datums tiks izmantots visiem vienumiem:"
    TXT_CONFIRM_HEADER_TIME="Šis izveides datums un laiks tiks izmantoti visiem vienumiem:"
    TXT_CONFIRM_HEADER_KEEP="Tiks izmantots šis datums un saglabāts katra vienuma sākotnējais laiks:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="sākotnējais laiks"
    TXT_CONFIRM_QUESTION="Vai tiešām vēlaties turpināt? (y/n)"
    TXT_CANCELLED="Atcelts."
    TXT_PROCESSING_FOLDER="➜ Apstrādā mapi:"
    TXT_DONE_FOLDER="✔ Datumi mainīti šeit:"
    TXT_PROCESSING_FILE="➜ Apstrādā failu:"
    TXT_DONE_FILE="✔ Fails atjaunināts:"
    TXT_NOT_FOUND="✖ Nav atrasts:"
    TXT_FINISHED="Darbība pabeigta."
    LANG_SET=1
    ;;
  lt)
    TXT_DRAG="Vilkite failus arba aplankus ir paspauskite Enter:"
    TXT_NO_INPUT="Kelias negautas."
    TXT_SETFILE_MISSING="Komanda SetFile nerasta."
    TXT_INSTALL_XCODE="Įdiekite komandų eilutės įrankius su: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nerasta."
    TXT_EXIFTOOL_SKIPPED="ExifTool neįdiegta. Vidiniai metaduomenys nebus atnaujinti."
    TXT_YEAR_PROMPT="Įveskite naujus metus (YYYY):"
    TXT_MONTH_PROMPT="Įveskite naują mėnesį (1-12):"
    TXT_DAY_PROMPT="Įveskite naują dieną (1-31):"
    TXT_INVALID_NUMBER="Neteisingas skaičiaus formatas."
    TXT_INVALID_YEAR="Neteisingas metų formatas."
    TXT_INVALID_MONTH="Neteisingas mėnesio formatas."
    TXT_INVALID_DAY="Neteisingas dienos formatas."
    TXT_INVALID_HOUR="Neteisingas valandos formatas."
    TXT_INVALID_MINUTE="Neteisingas minučių formatas."
    TXT_MONTH_RANGE="Mėnuo yra už leistino intervalo ribų."
    TXT_DAY_RANGE="Diena yra už leistino intervalo ribų."
    TXT_HOUR_RANGE="Valanda yra už leistino intervalo ribų."
    TXT_MIN_RANGE="Minutės yra už leistino intervalo ribų."
    TXT_INVALID_DATE="Nurodyta data yra neteisinga."
    TXT_FUTURE_DATE="Būsimų datų naudoti negalima."
    TXT_RETRY="Bandykite dar kartą:"
    TXT_CHANGE_TIME="Ar norite pakeisti ir laiką? (y/n)"
    TXT_HOUR_PROMPT="Įveskite valandą (0-23):"
    TXT_MIN_PROMPT="Įveskite minutes (0-59):"
    TXT_CHANGE_SECONDS="Ar norite pakeisti ir sekundes? (y/n)"
    TXT_SECONDS_PROMPT="Įveskite sekundes (0-59):"
    TXT_INVALID_SECOND="Netinkamas sekundžių formatas."
    TXT_SECOND_RANGE="Sekundės už intervalo ribų."
    TXT_INVALID_RESPONSE="Neleistinas atsakymas. Bandykite dar kartą:"
    TXT_CONFIRM_HEADER="Ši sukūrimo data bus naudojama visiems elementams:"
    TXT_CONFIRM_HEADER_TIME="Ši sukūrimo data ir laikas bus naudojami visiems elementams:"
    TXT_CONFIRM_HEADER_KEEP="Bus naudojama ši data, išsaugant kiekvieno elemento pradinį laiką:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="pradinis laikas"
    TXT_CONFIRM_QUESTION="Ar tikrai norite tęsti? (y/n)"
    TXT_CANCELLED="Atšaukta."
    TXT_PROCESSING_FOLDER="➜ Apdorojamas aplankas:"
    TXT_DONE_FOLDER="✔ Datos pakeistos čia:"
    TXT_PROCESSING_FILE="➜ Apdorojamas failas:"
    TXT_DONE_FILE="✔ Failas atnaujintas:"
    TXT_NOT_FOUND="✖ Nerasta:"
    TXT_FINISHED="Veiksmas baigtas."
    LANG_SET=1
    ;;
  et)
    TXT_DRAG="Lohista failid või kaustad ja vajuta Enter:"
    TXT_NO_INPUT="Tee ei ole saadud."
    TXT_SETFILE_MISSING="Käsku SetFile ei leitud."
    TXT_INSTALL_XCODE="Paigalda käsurea tööriistad käsuga: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTooli ei leitud."
    TXT_EXIFTOOL_SKIPPED="ExifTooli ei paigaldatud. Sisemisi metaandmeid ei uuendata."
    TXT_YEAR_PROMPT="Sisesta uus aasta (YYYY):"
    TXT_MONTH_PROMPT="Sisesta uus kuu (1-12):"
    TXT_DAY_PROMPT="Sisesta uus päev (1-31):"
    TXT_INVALID_NUMBER="Vigane numbri vorming."
    TXT_INVALID_YEAR="Vigane aasta vorming."
    TXT_INVALID_MONTH="Vigane kuu vorming."
    TXT_INVALID_DAY="Vigane päeva vorming."
    TXT_INVALID_HOUR="Vigane tunni vorming."
    TXT_INVALID_MINUTE="Vigane minuti vorming."
    TXT_MONTH_RANGE="Kuu on vahemikust väljas."
    TXT_DAY_RANGE="Päev on vahemikust väljas."
    TXT_HOUR_RANGE="Tund on vahemikust väljas."
    TXT_MIN_RANGE="Minutid on vahemikust väljas."
    TXT_INVALID_DATE="Määratud kuupäev ei ole kehtiv."
    TXT_FUTURE_DATE="Tulevased kuupäevad ei ole lubatud."
    TXT_RETRY="Proovi uuesti:"
    TXT_CHANGE_TIME="Kas soovid muuta ka aega? (y/n)"
    TXT_HOUR_PROMPT="Sisesta tund (0-23):"
    TXT_MIN_PROMPT="Sisesta minutid (0-59):"
    TXT_CHANGE_SECONDS="Kas soovid muuta ka sekundeid? (y/n)"
    TXT_SECONDS_PROMPT="Sisesta sekundid (0-59):"
    TXT_INVALID_SECOND="Vigane sekundite vorming."
    TXT_SECOND_RANGE="Sekundid on vahemikust väljas."
    TXT_INVALID_RESPONSE="Vigane vastus. Proovi uuesti:"
    TXT_CONFIRM_HEADER="Seda loomiskuupäeva kasutatakse kõigi elementide jaoks:"
    TXT_CONFIRM_HEADER_TIME="Seda loomiskuupäeva ja -aega kasutatakse kõigi elementide jaoks:"
    TXT_CONFIRM_HEADER_KEEP="Seda kuupäeva kasutatakse ja iga elemendi algne kellaaeg säilitatakse:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="algne kellaaeg"
    TXT_CONFIRM_QUESTION="Kas oled kindel, et soovid jätkata? (y/n)"
    TXT_CANCELLED="Tühistatud."
    TXT_PROCESSING_FOLDER="➜ Töötlen kausta:"
    TXT_DONE_FOLDER="✔ Kuupäevi muudetud siin:"
    TXT_PROCESSING_FILE="➜ Töötlen faili:"
    TXT_DONE_FILE="✔ Fail on uuendatud:"
    TXT_NOT_FOUND="✖ Ei leitud:"
    TXT_FINISHED="Toiming on lõpetatud."
    LANG_SET=1
    ;;
  br)
    TXT_DRAG="Riklit restroù pe teuliadoù ha pouezit war Enter:"
    TXT_NO_INPUT="N'eus hent ebet resevet."
    TXT_SETFILE_MISSING="N'eo ket kavet ar urzh SetFile."
    TXT_INSTALL_XCODE="Staliañ an ostilhoù linenn-urzh gant: xcode-select --install"
    TXT_EXIFTOOL_MISSING="N'eo ket kavet ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool n'eo ket staliet. Ar metadata diabarzh ne vo ket hizivaet."
    TXT_YEAR_PROMPT="Lakait ar bloaz nevez (BBBB):"
    TXT_MONTH_PROMPT="Lakait ar miz nevez (1-12):"
    TXT_DAY_PROMPT="Lakait an deiz nevez (1-31):"
    TXT_INVALID_NUMBER="Furmad niverel didalvoudek."
    TXT_INVALID_YEAR="Furmad bloaz didalvoudek."
    TXT_INVALID_MONTH="Furmad miz didalvoudek."
    TXT_INVALID_DAY="Furmad deiz didalvoudek."
    TXT_INVALID_HOUR="Furmad eur didalvoudek."
    TXT_INVALID_MINUTE="Furmad munutenn didalvoudek."
    TXT_MONTH_RANGE="Ar miz a zo er-maez eus ar skeuliad."
    TXT_DAY_RANGE="An deiz a zo er-maez eus ar skeuliad."
    TXT_HOUR_RANGE="An eur a zo er-maez eus ar skeuliad."
    TXT_MIN_RANGE="Ar munutennoù zo er-maez eus ar skeuliad."
    TXT_INVALID_DATE="N'eo ket talvoudek an deiziad roet."
    TXT_FUTURE_DATE="N'eo ket aotreet deizioù da zont."
    TXT_RETRY="Klaskit en-dro:"
    TXT_CHANGE_TIME="C'hoant oc'h kemmañ an eur ivez? (y/n)"
    TXT_HOUR_PROMPT="Lakait an eur (0-23):"
    TXT_MIN_PROMPT="Lakait ar munutennoù (0-59):"
    TXT_CHANGE_SECONDS="C'hoant oc'h kemmañ an eilennoù ivez? (y/n)"
    TXT_SECONDS_PROMPT="Lakait an eilennoù (0-59):"
    TXT_INVALID_SECOND="Stumm eilennoù direizh."
    TXT_SECOND_RANGE="Eilennoù er-maez eus ar skoulm."
    TXT_INVALID_RESPONSE="Respont didalvoudek. Klaskit en-dro:"
    TXT_CONFIRM_HEADER="Ar deiziad krouiñ-mañ a vo implijet evit an holl elfenn:"
    TXT_CONFIRM_HEADER_TIME="An deiziad hag an eur krouiñ-mañ a vo implijet evit an holl elfenn:"
    TXT_CONFIRM_HEADER_KEEP="Implijet e vo an deiziad-mañ ha miret e vo an eur orin evit pep elfenn:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="eur orin"
    TXT_CONFIRM_QUESTION="Ha sur oc'h e fell deoc'h kenderc'hel? (y/n)"
    TXT_CANCELLED="Nullet."
    TXT_PROCESSING_FOLDER="➜ O treiñ ar gartenn:"
    TXT_DONE_FOLDER="✔ Deizioù kemmet e:"
    TXT_PROCESSING_FILE="➜ O treiñ ar restr:"
    TXT_DONE_FILE="✔ Restr hizivaet:"
    TXT_NOT_FOUND="✖ N'eo ket kavet:"
    TXT_FINISHED="Oberiadenn echuet."
    LANG_SET=1
    ;;
  lv)
    TXT_DRAG="Velciet failus vai mapes un nospiediet Enter:"
    TXT_NO_INPUT="Ceļš nav saņemts."
    TXT_SETFILE_MISSING="Komanda SetFile nav atrasta."
    TXT_INSTALL_XCODE="Instalējiet komandrindas rīkus ar: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nav atrasts."
    TXT_EXIFTOOL_SKIPPED="ExifTool nav instalēts. Iekšējie metadati netiks atjaunināti."
    TXT_YEAR_PROMPT="Ievadiet jauno gadu (YYYY):"
    TXT_MONTH_PROMPT="Ievadiet jauno mēnesi (1-12):"
    TXT_DAY_PROMPT="Ievadiet jauno dienu (1-31):"
    TXT_INVALID_NUMBER="Nederīgs skaitļa formāts."
    TXT_INVALID_YEAR="Nederīgs gada formāts."
    TXT_INVALID_MONTH="Nederīgs mēneša formāts."
    TXT_INVALID_DAY="Nederīgs dienas formāts."
    TXT_INVALID_HOUR="Nederīgs stundas formāts."
    TXT_INVALID_MINUTE="Nederīgs minūšu formāts."
    TXT_MONTH_RANGE="Mēnesis ir ārpus diapazona."
    TXT_DAY_RANGE="Diena ir ārpus diapazona."
    TXT_HOUR_RANGE="Stunda ir ārpus diapazona."
    TXT_MIN_RANGE="Minūtes ir ārpus diapazona."
    TXT_INVALID_DATE="Norādītais datums nav derīgs."
    TXT_FUTURE_DATE="Nākotnes datumi nav atļauti."
    TXT_RETRY="Mēģiniet vēlreiz:"
    TXT_CHANGE_TIME="Vai vēlaties mainīt arī laiku? (y/n)"
    TXT_HOUR_PROMPT="Ievadiet stundu (0-23):"
    TXT_MIN_PROMPT="Ievadiet minūtes (0-59):"
    TXT_CHANGE_SECONDS="Vai vēlaties mainīt arī sekundes? (y/n)"
    TXT_SECONDS_PROMPT="Ievadiet sekundes (0-59):"
    TXT_INVALID_SECOND="Nederīgs sekunžu formāts."
    TXT_SECOND_RANGE="Sekundes ārpus diapazona."
    TXT_INVALID_RESPONSE="Nederīga atbilde. Mēģiniet vēlreiz:"
    TXT_CONFIRM_HEADER="Šis izveides datums tiks izmantots visiem vienumiem:"
    TXT_CONFIRM_HEADER_TIME="Šis izveides datums un laiks tiks izmantoti visiem vienumiem:"
    TXT_CONFIRM_HEADER_KEEP="Tiks izmantots šis datums un saglabāts katra vienuma sākotnējais laiks:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="sākotnējais laiks"
    TXT_CONFIRM_QUESTION="Vai tiešām vēlaties turpināt? (y/n)"
    TXT_CANCELLED="Atcelts."
    TXT_PROCESSING_FOLDER="➜ Apstrādā mapi:"
    TXT_DONE_FOLDER="✔ Datumi mainīti šeit:"
    TXT_PROCESSING_FILE="➜ Apstrādā failu:"
    TXT_DONE_FILE="✔ Fails atjaunināts:"
    TXT_NOT_FOUND="✖ Nav atrasts:"
    TXT_FINISHED="Darbība pabeigta."
    ;;
  lt)
    TXT_DRAG="Vilkite failus arba aplankus ir paspauskite Enter:"
    TXT_NO_INPUT="Kelias negautas."
    TXT_SETFILE_MISSING="Komanda SetFile nerasta."
    TXT_INSTALL_XCODE="Įdiekite komandų eilutės įrankius su: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nerasta."
    TXT_EXIFTOOL_SKIPPED="ExifTool neįdiegta. Vidiniai metaduomenys nebus atnaujinti."
    TXT_YEAR_PROMPT="Įveskite naujus metus (YYYY):"
    TXT_MONTH_PROMPT="Įveskite naują mėnesį (1-12):"
    TXT_DAY_PROMPT="Įveskite naują dieną (1-31):"
    TXT_INVALID_NUMBER="Neteisingas skaičiaus formatas."
    TXT_INVALID_YEAR="Neteisingas metų formatas."
    TXT_INVALID_MONTH="Neteisingas mėnesio formatas."
    TXT_INVALID_DAY="Neteisingas dienos formatas."
    TXT_INVALID_HOUR="Neteisingas valandos formatas."
    TXT_INVALID_MINUTE="Neteisingas minučių formatas."
    TXT_MONTH_RANGE="Mėnuo yra už leistino intervalo ribų."
    TXT_DAY_RANGE="Diena yra už leistino intervalo ribų."
    TXT_HOUR_RANGE="Valanda yra už leistino intervalo ribų."
    TXT_MIN_RANGE="Minutės yra už leistino intervalo ribų."
    TXT_INVALID_DATE="Nurodyta data yra neteisinga."
    TXT_FUTURE_DATE="Būsimų datų naudoti negalima."
    TXT_RETRY="Bandykite dar kartą:"
    TXT_CHANGE_TIME="Ar norite pakeisti ir laiką? (y/n)"
    TXT_HOUR_PROMPT="Įveskite valandą (0-23):"
    TXT_MIN_PROMPT="Įveskite minutes (0-59):"
    TXT_CHANGE_SECONDS="Ar norite pakeisti ir sekundes? (y/n)"
    TXT_SECONDS_PROMPT="Įveskite sekundes (0-59):"
    TXT_INVALID_SECOND="Netinkamas sekundžių formatas."
    TXT_SECOND_RANGE="Sekundės už intervalo ribų."
    TXT_INVALID_RESPONSE="Neleistinas atsakymas. Bandykite dar kartą:"
    TXT_CONFIRM_HEADER="Ši sukūrimo data bus naudojama visiems elementams:"
    TXT_CONFIRM_HEADER_TIME="Ši sukūrimo data ir laikas bus naudojami visiems elementams:"
    TXT_CONFIRM_HEADER_KEEP="Bus naudojama ši data, išsaugant kiekvieno elemento pradinį laiką:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="pradinis laikas"
    TXT_CONFIRM_QUESTION="Ar tikrai norite tęsti? (y/n)"
    TXT_CANCELLED="Atšaukta."
    TXT_PROCESSING_FOLDER="➜ Apdorojamas aplankas:"
    TXT_DONE_FOLDER="✔ Datos pakeistos čia:"
    TXT_PROCESSING_FILE="➜ Apdorojamas failas:"
    TXT_DONE_FILE="✔ Failas atnaujintas:"
    TXT_NOT_FOUND="✖ Nerasta:"
    TXT_FINISHED="Veiksmas baigtas."
    ;;
  et)
    TXT_DRAG="Lohista failid või kaustad ja vajuta Enter:"
    TXT_NO_INPUT="Tee ei ole saadud."
    TXT_SETFILE_MISSING="Käsku SetFile ei leitud."
    TXT_INSTALL_XCODE="Paigalda käsurea tööriistad käsuga: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTooli ei leitud."
    TXT_EXIFTOOL_SKIPPED="ExifTooli ei paigaldatud. Sisemisi metaandmeid ei uuendata."
    TXT_YEAR_PROMPT="Sisesta uus aasta (YYYY):"
    TXT_MONTH_PROMPT="Sisesta uus kuu (1-12):"
    TXT_DAY_PROMPT="Sisesta uus päev (1-31):"
    TXT_INVALID_NUMBER="Vigane numbri vorming."
    TXT_INVALID_YEAR="Vigane aasta vorming."
    TXT_INVALID_MONTH="Vigane kuu vorming."
    TXT_INVALID_DAY="Vigane päeva vorming."
    TXT_INVALID_HOUR="Vigane tunni vorming."
    TXT_INVALID_MINUTE="Vigane minuti vorming."
    TXT_MONTH_RANGE="Kuu on vahemikust väljas."
    TXT_DAY_RANGE="Päev on vahemikust väljas."
    TXT_HOUR_RANGE="Tund on vahemikust väljas."
    TXT_MIN_RANGE="Minutid on vahemikust väljas."
    TXT_INVALID_DATE="Määratud kuupäev ei ole kehtiv."
    TXT_FUTURE_DATE="Tulevased kuupäevad ei ole lubatud."
    TXT_RETRY="Proovi uuesti:"
    TXT_CHANGE_TIME="Kas soovid muuta ka aega? (y/n)"
    TXT_HOUR_PROMPT="Sisesta tund (0-23):"
    TXT_MIN_PROMPT="Sisesta minutid (0-59):"
    TXT_CHANGE_SECONDS="Kas soovid muuta ka sekundeid? (y/n)"
    TXT_SECONDS_PROMPT="Sisesta sekundid (0-59):"
    TXT_INVALID_SECOND="Vigane sekundite vorming."
    TXT_SECOND_RANGE="Sekundid on vahemikust väljas."
    TXT_INVALID_RESPONSE="Vigane vastus. Proovi uuesti:"
    TXT_CONFIRM_HEADER="Seda loomiskuupäeva kasutatakse kõigi elementide jaoks:"
    TXT_CONFIRM_HEADER_TIME="Seda loomiskuupäeva ja -aega kasutatakse kõigi elementide jaoks:"
    TXT_CONFIRM_HEADER_KEEP="Seda kuupäeva kasutatakse ja iga elemendi algne kellaaeg säilitatakse:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="algne kellaaeg"
    TXT_CONFIRM_QUESTION="Kas oled kindel, et soovid jätkata? (y/n)"
    TXT_CANCELLED="Tühistatud."
    TXT_PROCESSING_FOLDER="➜ Töötlen kausta:"
    TXT_DONE_FOLDER="✔ Kuupäevi muudetud siin:"
    TXT_PROCESSING_FILE="➜ Töötlen faili:"
    TXT_DONE_FILE="✔ Fail on uuendatud:"
    TXT_NOT_FOUND="✖ Ei leitud:"
    TXT_FINISHED="Toiming on lõpetatud."
    ;;
  br)
    TXT_DRAG="Riklit restroù pe teuliadoù ha pouezit war Enter:"
    TXT_NO_INPUT="N'eus hent ebet resevet."
    TXT_SETFILE_MISSING="N'eo ket kavet ar urzh SetFile."
    TXT_INSTALL_XCODE="Staliañ an ostilhoù linenn-urzh gant: xcode-select --install"
    TXT_EXIFTOOL_MISSING="N'eo ket kavet ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool n'eo ket staliet. Ar metadata diabarzh ne vo ket hizivaet."
    TXT_YEAR_PROMPT="Lakait ar bloaz nevez (BBBB):"
    TXT_MONTH_PROMPT="Lakait ar miz nevez (1-12):"
    TXT_DAY_PROMPT="Lakait an deiz nevez (1-31):"
    TXT_INVALID_NUMBER="Furmad niverel didalvoudek."
    TXT_INVALID_YEAR="Furmad bloaz didalvoudek."
    TXT_INVALID_MONTH="Furmad miz didalvoudek."
    TXT_INVALID_DAY="Furmad deiz didalvoudek."
    TXT_INVALID_HOUR="Furmad eur didalvoudek."
    TXT_INVALID_MINUTE="Furmad munutenn didalvoudek."
    TXT_MONTH_RANGE="Ar miz a zo er-maez eus ar skeuliad."
    TXT_DAY_RANGE="An deiz a zo er-maez eus ar skeuliad."
    TXT_HOUR_RANGE="An eur a zo er-maez eus ar skeuliad."
    TXT_MIN_RANGE="Ar munutennoù zo er-maez eus ar skeuliad."
    TXT_INVALID_DATE="N'eo ket talvoudek an deiziad roet."
    TXT_FUTURE_DATE="N'eo ket aotreet deizioù da zont."
    TXT_RETRY="Klaskit en-dro:"
    TXT_CHANGE_TIME="C'hoant oc'h kemmañ an eur ivez? (y/n)"
    TXT_HOUR_PROMPT="Lakait an eur (0-23):"
    TXT_MIN_PROMPT="Lakait ar munutennoù (0-59):"
    TXT_CHANGE_SECONDS="C'hoant oc'h kemmañ an eilennoù ivez? (y/n)"
    TXT_SECONDS_PROMPT="Lakait an eilennoù (0-59):"
    TXT_INVALID_SECOND="Stumm eilennoù direizh."
    TXT_SECOND_RANGE="Eilennoù er-maez eus ar skoulm."
    TXT_INVALID_RESPONSE="Respont didalvoudek. Klaskit en-dro:"
    TXT_CONFIRM_HEADER="Ar deiziad krouiñ-mañ a vo implijet evit an holl elfenn:"
    TXT_CONFIRM_HEADER_TIME="An deiziad hag an eur krouiñ-mañ a vo implijet evit an holl elfenn:"
    TXT_CONFIRM_HEADER_KEEP="Implijet e vo an deiziad-mañ ha miret e vo an eur orin evit pep elfenn:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="eur orin"
    TXT_CONFIRM_QUESTION="Ha sur oc'h e fell deoc'h kenderc'hel? (y/n)"
    TXT_CANCELLED="Nullet."
    TXT_PROCESSING_FOLDER="➜ O treiñ ar gartenn:"
    TXT_DONE_FOLDER="✔ Deizioù kemmet e:"
    TXT_PROCESSING_FILE="➜ O treiñ ar restr:"
    TXT_DONE_FILE="✔ Restr hizivaet:"
    TXT_NOT_FOUND="✖ N'eo ket kavet:"
    TXT_FINISHED="Oberiadenn echuet."
    ;;
  gd)
    TXT_DRAG="Tarraing faidhlichean no pasganan agus brùth Enter:"
    TXT_NO_INPUT="Cha deach slighe sam bith fhaighinn."
    TXT_SETFILE_MISSING="Cha deach an àithne SetFile a lorg."
    TXT_INSTALL_XCODE="Stàlaich na h-innealan loidhne-àithne le: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Cha deach ExifTool a lorg."
    TXT_EXIFTOOL_SKIPPED="Chan eil ExifTool air a stàladh. Cha tèid meata-dàta a-staigh ùrachadh."
    TXT_YEAR_PROMPT="Cuir a-steach a' bhliadhna ùr (BBBB):"
    TXT_MONTH_PROMPT="Cuir a-steach am mìos ùr (1-12):"
    TXT_DAY_PROMPT="Cuir a-steach an latha ùr (1-31):"
    TXT_INVALID_NUMBER="Fòrmat àireimh mì-dhligheach."
    TXT_INVALID_YEAR="Fòrmat bliadhna mì-dhligheach."
    TXT_INVALID_MONTH="Fòrmat mìosa mì-dhligheach."
    TXT_INVALID_DAY="Fòrmat latha mì-dhligheach."
    TXT_INVALID_HOUR="Fòrmat uair a thìde mì-dhligheach."
    TXT_INVALID_MINUTE="Fòrmat mionaid mì-dhligheach."
    TXT_MONTH_RANGE="Mìos taobh a-muigh an raoin."
    TXT_DAY_RANGE="Latha taobh a-muigh an raoin."
    TXT_HOUR_RANGE="Uair taobh a-muigh an raoin."
    TXT_MIN_RANGE="Mionaidean taobh a-muigh an raoin."
    TXT_INVALID_DATE="Chan eil an ceann-là seo dligheach."
    TXT_FUTURE_DATE="Chan eil cinn-latha san àm ri teachd ceadaichte."
    TXT_RETRY="Feuch a-rithist:"
    TXT_CHANGE_TIME="A bheil thu airson an t-àm atharrachadh cuideachd? (y/n)"
    TXT_HOUR_PROMPT="Cuir a-steach an uair (0-23):"
    TXT_MIN_PROMPT="Cuir a-steach na mionaidean (0-59):"
    TXT_CHANGE_SECONDS="A bheil thu airson na diogan atharrachadh cuideachd? (y/n)"
    TXT_SECONDS_PROMPT="Cuir a-steach na diogan (0-59):"
    TXT_INVALID_SECOND="Cruth diogan mì-dhligheach."
    TXT_SECOND_RANGE="Diogan taobh a-muigh an raoin."
    TXT_INVALID_RESPONSE="Freagairt mì-dhligheach. Feuch a-rithist:"
    TXT_CONFIRM_HEADER="Thèid an ceann-là cruthachaidh seo a chleachdadh airson gach nì:"
    TXT_CONFIRM_HEADER_TIME="Thèid an ceann-là agus àm cruthachaidh seo a chleachdadh airson gach nì:"
    TXT_CONFIRM_HEADER_KEEP="Thèid an ceann-là seo a chleachdadh agus thèid àm tùsail gach nì a ghlèidheadh:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="àm tùsail"
    TXT_CONFIRM_QUESTION="A bheil thu cinnteach gu bheil thu airson leantainn air adhart? (y/n)"
    TXT_CANCELLED="Air a chur dheth."
    TXT_PROCESSING_FOLDER="➜ Pasgan ga phròiseasadh:"
    TXT_DONE_FOLDER="✔ Ceann-latha air atharrachadh ann:"
    TXT_PROCESSING_FILE="➜ Faidhle ga phròiseasadh:"
    TXT_DONE_FILE="✔ Faidhle air ùrachadh:"
    TXT_NOT_FOUND="✖ Cha deach a lorg:"
    TXT_FINISHED="Gnìomh deiseil."
    ;;
  cy)
    TXT_DRAG="Llusgwch ffeiliau neu ffolderi a gwasgwch Enter:"
    TXT_NO_INPUT="Ni dderbyniwyd llwybr."
    TXT_SETFILE_MISSING="Heb ganfod y gorchymyn SetFile."
    TXT_INSTALL_XCODE="Gosodwch yr offer llinell orchymyn gyda: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Ni chafwyd hyd i ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool heb ei osod. Ni fydd metadata mewnol yn cael ei ddiweddaru."
    TXT_YEAR_PROMPT="Rhowch y flwyddyn newydd (BBBB):"
    TXT_MONTH_PROMPT="Rhowch y mis newydd (1-12):"
    TXT_DAY_PROMPT="Rhowch y diwrnod newydd (1-31):"
    TXT_INVALID_NUMBER="Fformat rhif annilys."
    TXT_INVALID_YEAR="Fformat blwyddyn annilys."
    TXT_INVALID_MONTH="Fformat mis annilys."
    TXT_INVALID_DAY="Fformat diwrnod annilys."
    TXT_INVALID_HOUR="Fformat awr annilys."
    TXT_INVALID_MINUTE="Fformat munud annilys."
    TXT_MONTH_RANGE="Mis y tu allan i'r ystod."
    TXT_DAY_RANGE="Diwrnod y tu allan i'r ystod."
    TXT_HOUR_RANGE="Awr y tu allan i'r ystod."
    TXT_MIN_RANGE="Munudau y tu allan i'r ystod."
    TXT_INVALID_DATE="Nid yw'r dyddiad a roddwyd yn ddilys."
    TXT_FUTURE_DATE="Ni chaniateir dyddiadau yn y dyfodol."
    TXT_RETRY="Rhowch gynnig arall:"
    TXT_CHANGE_TIME="Ydych chi am newid yr amser hefyd? (y/n)"
    TXT_HOUR_PROMPT="Rhowch yr awr (0-23):"
    TXT_MIN_PROMPT="Rhowch y munudau (0-59):"
    TXT_CHANGE_SECONDS="Ydych chi am newid yr eiliadau hefyd? (y/n)"
    TXT_SECONDS_PROMPT="Rhowch yr eiliadau (0-59):"
    TXT_INVALID_SECOND="Fformat eiliadau annilys."
    TXT_SECOND_RANGE="Eiliadau y tu allan i'r ystod."
    TXT_INVALID_RESPONSE="Ymateb annilys. Rhowch gynnig arall:"
    TXT_CONFIRM_HEADER="Defnyddir y dyddiad creu hwn ar gyfer pob eitem:"
    TXT_CONFIRM_HEADER_TIME="Defnyddir y dyddiad a'r amser creu hwn ar gyfer pob eitem:"
    TXT_CONFIRM_HEADER_KEEP="Defnyddir y dyddiad hwn a chedwir amser gwreiddiol pob eitem:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="amser gwreiddiol"
    TXT_CONFIRM_QUESTION="Ydych chi'n siŵr eich bod am barhau? (y/n)"
    TXT_CANCELLED="Wedi'i ganslo."
    TXT_PROCESSING_FOLDER="➜ Yn prosesu ffolder:"
    TXT_DONE_FOLDER="✔ Dyddiadau wedi'u newid yn:"
    TXT_PROCESSING_FILE="➜ Yn prosesu ffeil:"
    TXT_DONE_FILE="✔ Ffeil wedi'i diweddaru:"
    TXT_NOT_FOUND="✖ Heb ei ganfod:"
    TXT_FINISHED="Gweithred wedi'i chwblhau."
    ;;
  gallo)
    TXT_DRAG="Trainâ des fiquiers ou des dossièrs pis tappe Enter :"
    TXT_NO_INPUT="Nénne chamin n'a stâ rçu."
    TXT_SETFILE_MISSING="La commande SetFile n'a pas stâ trovâ."
    TXT_INSTALL_XCODE="Installe les ôtirs de la línn' de commande avou : xcode-select --install"
    TXT_EXIFTOOL_MISSING="N'i a pas trovâ ExifTool."
    TXT_EXIFTOOL_SKIPPED="ExifTool pas instâlé. Les métadonnées intèrnes ne seron pas mises a jorn."
    TXT_YEAR_PROMPT="Mèt l'an novu (AAAA) :"
    TXT_MONTH_PROMPT="Mèt lo mois novu (1-12) :"
    TXT_DAY_PROMPT="Mèt lo jorn novu (1-31) :"
    TXT_INVALID_NUMBER="Format d'nomb pas valiâ."
    TXT_INVALID_YEAR="Format d'an pas valiâ."
    TXT_INVALID_MONTH="Format de mois pas valiâ."
    TXT_INVALID_DAY="Format de jorn pas valiâ."
    TXT_INVALID_HOUR="Format d'heûre pas valiâ."
    TXT_INVALID_MINUTE="Format de menutes pas valiâ."
    TXT_MONTH_RANGE="Lo mois est déhors des limites."
    TXT_DAY_RANGE="Lo jorn est déhors des limites."
    TXT_HOUR_RANGE="L'heûre est déhors des limites."
    TXT_MIN_RANGE="Les menutes sont déhors des limites."
    TXT_INVALID_DATE="La date donaée n'est pas valiâ."
    TXT_FUTURE_DATE="Les dates a vénir sont pas authorisâes."
    TXT_RETRY="Ressaie :"
    TXT_CHANGE_TIME="Veut-tu changer l'heûre ossi ? (y/n)"
    TXT_HOUR_PROMPT="Mèt l'heûre (0-23) :"
    TXT_MIN_PROMPT="Mèt les menutes (0-59) :"
    TXT_CHANGE_SECONDS="Veut-tu changer les secondes ossi ? (y/n)"
    TXT_SECONDS_PROMPT="Mèt les secondes (0-59) :"
    TXT_INVALID_SECOND="Format des secondes pas valabl."
    TXT_SECOND_RANGE="Secondes dehôrs du champ."
    TXT_INVALID_RESPONSE="Réponse pas valiâ. Ressaie :"
    TXT_CONFIRM_HEADER="Cete date de création serat pruse totos les pièches :"
    TXT_CONFIRM_HEADER_TIME="Cete date et cete heûre de création serant pruse totos les pièches :"
    TXT_CONFIRM_HEADER_KEEP="Cete date serat pruse é s'garderat l'heûre d'origine de châque pièche :"
    TXT_ORIGINAL_TIME_PLACEHOLDER="heûre d'origine"
    TXT_CONFIRM_QUESTION="Est-tu seûr d'vouloir continouèr ? (y/n)"
    TXT_CANCELLED="Anulâ."
    TXT_PROCESSING_FOLDER="➜ Dossièr en train d'êtr' traité :"
    TXT_DONE_FOLDER="✔ Dates changiâes dins :"
    TXT_PROCESSING_FILE="➜ Fiquier en train d'êtr' traité :"
    TXT_DONE_FILE="✔ Fiquier mes a jorn :"
    TXT_NOT_FOUND="✖ Pas trovâ :"
    TXT_FINISHED="Ôtrage achavâ."
    ;;
  ar)
    TXT_DRAG="اسحب الملفات أو المجلدات ثم اضغط Enter:"
    TXT_NO_INPUT="لم يتم استلام أي مسار."
    TXT_SETFILE_MISSING="لم يتم العثور على الأمر SetFile."
    TXT_INSTALL_XCODE="ثبّت أدوات سطر الأوامر باستخدام: xcode-select --install"
    TXT_EXIFTOOL_MISSING="لم يتم العثور على ExifTool."
    TXT_EXIFTOOL_SKIPPED="لم يتم تثبيت ExifTool. لن يتم تحديث البيانات الوصفية الداخلية."
    TXT_YEAR_PROMPT="أدخل السنة الجديدة (YYYY):"
    TXT_MONTH_PROMPT="أدخل الشهر الجديد (1-12):"
    TXT_DAY_PROMPT="أدخل اليوم الجديد (1-31):"
    TXT_INVALID_NUMBER="تنسيق رقم غير صالح."
    TXT_INVALID_YEAR="تنسيق سنة غير صالح."
    TXT_INVALID_MONTH="تنسيق شهر غير صالح."
    TXT_INVALID_DAY="تنسيق يوم غير صالح."
    TXT_INVALID_HOUR="تنسيق ساعة غير صالح."
    TXT_INVALID_MINUTE="تنسيق دقائق غير صالح."
    TXT_MONTH_RANGE="الشهر خارج النطاق."
    TXT_DAY_RANGE="اليوم خارج النطاق."
    TXT_HOUR_RANGE="الساعة خارج النطاق."
    TXT_MIN_RANGE="الدقائق خارج النطاق."
    TXT_INVALID_DATE="التاريخ المحدد غير صالح."
    TXT_FUTURE_DATE="لا يُسمح بالتواريخ المستقبلية."
    TXT_RETRY="حاول مرة أخرى:"
    TXT_CHANGE_TIME="هل تريد أيضًا تغيير الوقت؟ (y/n)"
    TXT_HOUR_PROMPT="أدخل الساعة (0-23):"
    TXT_MIN_PROMPT="أدخل الدقائق (0-59):"
    TXT_CHANGE_SECONDS="هل تريد أيضًا تغيير الثواني؟ (y/n)"
    TXT_SECONDS_PROMPT="أدخل الثواني (0-59):"
    TXT_INVALID_SECOND="تنسيق الثواني غير صالح."
    TXT_SECOND_RANGE="الثواني خارج النطاق."
    TXT_INVALID_RESPONSE="استجابة غير صالحة. حاول مرة أخرى:"
    TXT_CONFIRM_HEADER="سيتم استخدام تاريخ الإنشاء هذا لجميع العناصر:"
    TXT_CONFIRM_HEADER_TIME="سيتم استخدام تاريخ ووقت الإنشاء هذا لجميع العناصر:"
    TXT_CONFIRM_HEADER_KEEP="سيتم استخدام هذا التاريخ مع الاحتفاظ بالوقت الأصلي لكل عنصر:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="الوقت الأصلي"
    TXT_CONFIRM_QUESTION="هل أنت متأكد أنك تريد المتابعة؟ (y/n)"
    TXT_CANCELLED="تم الإلغاء."
    TXT_PROCESSING_FOLDER="➜ جارٍ معالجة المجلد:"
    TXT_DONE_FOLDER="✔ تم تغيير التواريخ في:"
    TXT_PROCESSING_FILE="➜ جارٍ معالجة الملف:"
    TXT_DONE_FILE="✔ تم تحديث الملف:"
    TXT_NOT_FOUND="✖ غير موجود:"
    TXT_FINISHED="اكتملت العملية."
    ;;
  el)
    TXT_DRAG="Σύρετε αρχεία ή φακέλους και πατήστε Enter:"
    TXT_NO_INPUT="Δεν ελήφθη καμία διαδρομή."
    TXT_SETFILE_MISSING="Η εντολή SetFile δεν βρέθηκε."
    TXT_INSTALL_XCODE="Εγκαταστήστε τα εργαλεία γραμμής εντολών με: xcode-select --install"
    TXT_EXIFTOOL_MISSING="Δεν βρέθηκε το ExifTool."
    TXT_EXIFTOOL_SKIPPED="Το ExifTool δεν εγκαταστάθηκε. Τα εσωτερικά μεταδεδομένα δεν θα ενημερωθούν."
    TXT_YEAR_PROMPT="Εισαγάγετε το νέο έτος (YYYY):"
    TXT_MONTH_PROMPT="Εισαγάγετε τον νέο μήνα (1-12):"
    TXT_DAY_PROMPT="Εισαγάγετε τη νέα ημέρα (1-31):"
    TXT_INVALID_NUMBER="Μη έγκυρη μορφή αριθμού."
    TXT_INVALID_YEAR="Μη έγκυρη μορφή έτους."
    TXT_INVALID_MONTH="Μη έγκυρη μορφή μήνα."
    TXT_INVALID_DAY="Μη έγκυρη μορφή ημέρας."
    TXT_INVALID_HOUR="Μη έγκυρη μορφή ώρας."
    TXT_INVALID_MINUTE="Μη έγκυρη μορφή λεπτών."
    TXT_MONTH_RANGE="Ο μήνας είναι εκτός ορίων."
    TXT_DAY_RANGE="Η ημέρα είναι εκτός ορίων."
    TXT_HOUR_RANGE="Η ώρα είναι εκτός ορίων."
    TXT_MIN_RANGE="Τα λεπτά είναι εκτός ορίων."
    TXT_INVALID_DATE="Η καθορισμένη ημερομηνία δεν είναι έγκυρη."
    TXT_FUTURE_DATE="Δεν επιτρέπονται μελλοντικές ημερομηνίες."
    TXT_RETRY="Δοκιμάστε ξανά:"
    TXT_CHANGE_TIME="Θέλετε επίσης να αλλάξετε την ώρα; (y/n)"
    TXT_HOUR_PROMPT="Εισαγάγετε την ώρα (0-23):"
    TXT_MIN_PROMPT="Εισαγάγετε τα λεπτά (0-59):"
    TXT_CHANGE_SECONDS="Θέλετε επίσης να αλλάξετε τα δευτερόλεπτα; (y/n)"
    TXT_SECONDS_PROMPT="Εισαγάγετε τα δευτερόλεπτα (0-59):"
    TXT_INVALID_SECOND="Μη έγκυρη μορφή δευτερολέπτων."
    TXT_SECOND_RANGE="Τα δευτερόλεπτα είναι εκτός εύρους."
    TXT_INVALID_RESPONSE="Μη έγκυρη απάντηση. Δοκιμάστε ξανά:"
    TXT_CONFIRM_HEADER="Αυτή η ημερομηνία δημιουργίας θα χρησιμοποιηθεί για όλα τα στοιχεία:"
    TXT_CONFIRM_HEADER_TIME="Αυτή η ημερομηνία και ώρα δημιουργίας θα χρησιμοποιηθεί για όλα τα στοιχεία:"
    TXT_CONFIRM_HEADER_KEEP="Θα χρησιμοποιηθεί αυτή η ημερομηνία και θα διατηρηθεί η αρχική ώρα κάθε στοιχείου:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="αρχική ώρα"
    TXT_CONFIRM_QUESTION="Είστε σίγουρος/η ότι θέλετε να συνεχίσετε; (y/n)"
    TXT_CANCELLED="Ακυρώθηκε."
    TXT_PROCESSING_FOLDER="➜ Επεξεργασία φακέλου:"
    TXT_DONE_FOLDER="✔ Οι ημερομηνίες άλλαξαν σε:"
    TXT_PROCESSING_FILE="➜ Επεξεργασία αρχείου:"
    TXT_DONE_FILE="✔ Το αρχείο ενημερώθηκε:"
    TXT_NOT_FOUND="✖ Δεν βρέθηκε:"
    TXT_FINISHED="Η λειτουργία ολοκληρώθηκε."
    ;;
  ro)
    TXT_DRAG="Trageți fișiere sau dosare și apăsați Enter:"
    TXT_NO_INPUT="Nu a fost primit niciun drum."
    TXT_SETFILE_MISSING="Comanda SetFile nu a fost găsită."
    TXT_INSTALL_XCODE="Instalați uneltele de linie de comandă cu: xcode-select --install"
    TXT_EXIFTOOL_MISSING="ExifTool nu a fost găsit."
    TXT_EXIFTOOL_SKIPPED="ExifTool nu este instalat. Metadatele interne nu vor fi actualizate."
    TXT_YEAR_PROMPT="Introduceți noul an (YYYY):"
    TXT_MONTH_PROMPT="Introduceți noua lună (1-12):"
    TXT_DAY_PROMPT="Introduceți noua zi (1-31):"
    TXT_INVALID_NUMBER="Format numeric invalid."
    TXT_INVALID_YEAR="Format de an invalid."
    TXT_INVALID_MONTH="Format de lună invalid."
    TXT_INVALID_DAY="Format de zi invalid."
    TXT_INVALID_HOUR="Format de oră invalid."
    TXT_INVALID_MINUTE="Format de minute invalid."
    TXT_MONTH_RANGE="Luna este în afara intervalului."
    TXT_DAY_RANGE="Ziua este în afara intervalului."
    TXT_HOUR_RANGE="Ora este în afara intervalului."
    TXT_MIN_RANGE="Minutele sunt în afara intervalului."
    TXT_INVALID_DATE="Data indicată nu este validă."
    TXT_FUTURE_DATE="Datele din viitor nu sunt permise."
    TXT_RETRY="Încearcă din nou:"
    TXT_CHANGE_TIME="Vrei să schimbi și ora? (y/n)"
    TXT_HOUR_PROMPT="Introdu ora (0-23):"
    TXT_MIN_PROMPT="Introdu minutele (0-59):"
    TXT_CHANGE_SECONDS="Doriți să schimbați și secundele? (y/n)"
    TXT_SECONDS_PROMPT="Introduceți secundele (0-59):"
    TXT_INVALID_SECOND="Format de secunde invalid."
    TXT_SECOND_RANGE="Secundele sunt în afara intervalului."
    TXT_INVALID_RESPONSE="Răspuns invalid. Încearcă din nou:"
    TXT_CONFIRM_HEADER="Această dată de creare va fi folosită pentru toate elementele:"
    TXT_CONFIRM_HEADER_TIME="Această dată și oră de creare vor fi folosite pentru toate elementele:"
    TXT_CONFIRM_HEADER_KEEP="Această dată va fi folosită și se va păstra ora inițială a fiecărui element:"
    TXT_ORIGINAL_TIME_PLACEHOLDER="ora inițială"
    TXT_CONFIRM_QUESTION="Sigur doriți să continuați? (y/n)"
    TXT_CANCELLED="Anulat."
    TXT_PROCESSING_FOLDER="➜ Se procesează dosarul:"
    TXT_DONE_FOLDER="✔ Date modificate în:"
    TXT_PROCESSING_FILE="➜ Se procesează fișierul:"
    TXT_DONE_FILE="✔ Fișier actualizat:"
    TXT_NOT_FOUND="✖ Negăsit:"
    TXT_FINISHED="Operațiune finalizată."
    LANG_SET=1
    ;;
  *)
    ;;
esac

: "${TXT_INVALID_YEAR:=$TXT_INVALID_NUMBER}"
: "${TXT_INVALID_MONTH:=$TXT_INVALID_NUMBER}"
: "${TXT_INVALID_DAY:=$TXT_INVALID_NUMBER}"
: "${TXT_INVALID_HOUR:=$TXT_INVALID_NUMBER}"
: "${TXT_INVALID_MINUTE:=$TXT_INVALID_NUMBER}"
: "${TXT_MONTH_RANGE:=$TXT_INVALID_DATE}"
: "${TXT_DAY_RANGE:=$TXT_INVALID_DATE}"
: "${TXT_HOUR_RANGE:=$TXT_INVALID_NUMBER}"
: "${TXT_MIN_RANGE:=$TXT_INVALID_NUMBER}"
: "${TXT_EXIFTOOL_MISSING:=ExifTool not found.}"
: "${TXT_EXIFTOOL_SKIPPED:=ExifTool not installed. Internal metadata will not be updated.}"
: "${TXT_INVALID_SECOND:=$TXT_INVALID_NUMBER}"
: "${TXT_SECOND_RANGE:=$TXT_INVALID_NUMBER}"
: "${TXT_RETRY:=Try again:}"
: "${TXT_INVALID_RESPONSE:=$TXT_INVALID_NUMBER}"
: "${TXT_CHANGE_TIME:=Do you also want to change the time? (y/n)}"
: "${TXT_HOUR_PROMPT:=Enter the hour (0-23):}"
: "${TXT_MIN_PROMPT:=Enter the minutes (0-59):}"
: "${TXT_CHANGE_SECONDS:=Do you also want to change the seconds? (y/n)}"
: "${TXT_SECONDS_PROMPT:=Enter the seconds (0-59):}"
: "${TXT_CONFIRM_HEADER_TIME:=$TXT_CONFIRM_HEADER}"
: "${TXT_CONFIRM_HEADER_KEEP:=$TXT_CONFIRM_HEADER}"
: "${TXT_ORIGINAL_TIME_PLACEHOLDER:=$TXT_NOT_FOUND}"
: "${TXT_CONFIRM_QUESTION:=Are you sure you want to continue? (y/n)}"
}

load_lang "$lang_code"

echo
echo "$TXT_DRAG"
read -r linea
echo

while true; do
    if echo " $SUPPORTED_CODES " | grep -q " $linea "; then
        lang_code="$linea"
        load_lang "$lang_code"
        echo
        echo "$TXT_DRAG"
        read -r linea
        echo
        continue
    fi

    if [ -z "$linea" ]; then
        echo "$TXT_NO_INPUT"
        (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
        exit 0
    fi

    eval "set -- $linea"

    any_exists=0
    for ruta in "$@"; do
        if [ -e "$ruta" ]; then
            any_exists=1
            break
        fi
    done

    if [ "$any_exists" -eq 1 ]; then
        break
    fi

    echo "$TXT_NOT_FOUND $linea"
    echo "$TXT_RETRY"
    read -r linea
    echo
done

if ! command -v SetFile >/dev/null 2>&1; then
    echo "$TXT_SETFILE_MISSING"
    echo "$TXT_INSTALL_XCODE"
    (sleep 4 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

exiftool_disponible=0
exiftool_cmd=""
script_dir="$(cd "$(dirname "$0")" && pwd)"
app_bundle_exiftool="$script_dir/exiftool/exiftool"
if [ -x "$app_bundle_exiftool" ]; then
    exiftool_disponible=1
    exiftool_cmd="$app_bundle_exiftool"
elif command -v exiftool >/dev/null 2>&1; then
    exiftool_disponible=1
    exiftool_cmd="$(command -v exiftool)"
else
    echo "$TXT_EXIFTOOL_MISSING"
    echo "$TXT_EXIFTOOL_SKIPPED"
fi

current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)
current_year_num=$current_year
current_month_num=$current_month
current_day_num=$current_day

echo "$TXT_YEAR_PROMPT"
while true; do
    read -r anio

    if ! [[ "$anio" =~ ^[0-9]{4}$ ]]; then
        echo "$TXT_INVALID_YEAR $TXT_RETRY"
        continue
    fi

    anio_num=$anio

    if (( anio_num > current_year_num )); then
        echo "$TXT_FUTURE_DATE $TXT_RETRY"
        continue
    fi
    break
done

echo "$TXT_MONTH_PROMPT"
while true; do
    read -r mes

    if ! [[ "$mes" =~ ^[0-9]{1,2}$ ]]; then
        echo "$TXT_INVALID_MONTH $TXT_RETRY"
        continue
    fi

    mes_num=$mes

    if (( mes_num < 1 || mes_num > 12 )); then
        echo "$TXT_MONTH_RANGE $TXT_RETRY"
        continue
    fi

    if (( anio_num == current_year_num && mes_num > current_month_num )); then
        echo "$TXT_FUTURE_DATE $TXT_RETRY"
        continue
    fi
    break
done

echo "$TXT_DAY_PROMPT"
while true; do
    read -r dia

    if ! [[ "$dia" =~ ^[0-9]{1,2}$ ]]; then
        echo "$TXT_INVALID_DAY $TXT_RETRY"
        continue
    fi

    dia_num=$dia

    if (( dia_num < 1 || dia_num > 31 )); then
        echo "$TXT_DAY_RANGE $TXT_RETRY"
        continue
    fi

    es_bisiesto=0
    if (( (anio_num % 4 == 0 && anio_num % 100 != 0) || (anio_num % 400 == 0) )); then
        es_bisiesto=1
    fi

    case $mes_num in
        1|3|5|7|8|10|12)
            max_dia=31
            ;;
        4|6|9|11)
            max_dia=30
            ;;
        2)
            if (( es_bisiesto == 1 )); then
                max_dia=29
            else
                max_dia=28
            fi
            ;;
        *)
            echo "$TXT_INVALID_DATE $TXT_RETRY"
            continue
            ;;
    esac

    if (( dia_num > max_dia )); then
        echo "$TXT_INVALID_DATE $TXT_RETRY"
        continue
    fi

    if (( anio_num == current_year_num && mes_num == current_month_num && dia_num > current_day_num )); then
        echo "$TXT_FUTURE_DATE $TXT_RETRY"
        continue
    fi
    break
done

if [ ${#mes} -eq 1 ]; then
    mes="0$mes"
fi

if [ ${#dia} -eq 1 ]; then
    dia="0$dia"
fi

fecha_base="$mes/$dia/$anio"
fecha_exif_base="$anio:$mes:$dia"

echo "$TXT_CHANGE_TIME"
while true; do
    read -r cambiar_hora
    if [[ "$cambiar_hora" =~ ^[sSyYnN]$ ]]; then
        break
    fi
    echo "$TXT_INVALID_RESPONSE"
done

hora_personalizada=""
if [[ "$cambiar_hora" =~ ^[sSyY]$ ]]; then
    echo "$TXT_HOUR_PROMPT"
    while true; do
        read -r hora

        if ! [[ "$hora" =~ ^[0-9]{1,2}$ ]]; then
            echo "$TXT_INVALID_HOUR $TXT_RETRY"
            continue
        fi

        hora_num=$hora
        if (( hora_num < 0 || hora_num > 23 )); then
            echo "$TXT_HOUR_RANGE $TXT_RETRY"
            continue
        fi
        break
    done

    if [ ${#hora} -eq 1 ]; then
        hora="0$hora"
    fi

    echo "$TXT_MIN_PROMPT"
    while true; do
        read -r minutos

        if ! [[ "$minutos" =~ ^[0-9]{1,2}$ ]]; then
            echo "$TXT_INVALID_MINUTE $TXT_RETRY"
            continue
        fi

        minutos_num=$minutos
        if (( minutos_num < 0 || minutos_num > 59 )); then
            echo "$TXT_MIN_RANGE $TXT_RETRY"
            continue
        fi
        break
    done

    if [ ${#minutos} -eq 1 ]; then
        minutos="0$minutos"
    fi

    segundos="00"
    echo "$TXT_CHANGE_SECONDS"
    while true; do
        read -r cambiar_segundos
        if [[ "$cambiar_segundos" =~ ^[sSyYnN]$ ]]; then
            break
        fi
        echo "$TXT_INVALID_RESPONSE"
    done

    if [[ "$cambiar_segundos" =~ ^[sSyY]$ ]]; then
        echo "$TXT_SECONDS_PROMPT"
        while true; do
            read -r segundos

            if ! [[ "$segundos" =~ ^[0-9]{1,2}$ ]]; then
                echo "$TXT_INVALID_SECOND $TXT_RETRY"
                continue
            fi

            segundos_num=$segundos
            if (( segundos_num < 0 || segundos_num > 59 )); then
                echo "$TXT_SECOND_RANGE $TXT_RETRY"
                continue
            fi
            break
        done
    fi

    if [ ${#segundos} -eq 1 ]; then
        segundos="0$segundos"
    fi

    hora_personalizada="$hora:$minutos:$segundos"
fi

echo
if [ -n "$hora_personalizada" ]; then
    echo "$TXT_CONFIRM_HEADER_TIME"
    echo "$fecha_base $hora_personalizada"
else
    ejemplo_hora=""
    primer_item="$1"
    if [ -n "$primer_item" ] && [ -e "$primer_item" ]; then
        ejemplo_hora=$(stat -f "%SB" -t "%H:%M:%S" "$primer_item" 2>/dev/null)
    fi
    if [ -z "$ejemplo_hora" ]; then
        ejemplo_hora="$TXT_ORIGINAL_TIME_PLACEHOLDER"
    fi
    echo "$TXT_CONFIRM_HEADER_KEEP"
    echo "$fecha_base $ejemplo_hora"
fi
echo "$TXT_CONFIRM_QUESTION"
while true; do
    read -r confirmar
    if [[ "$confirmar" =~ ^[sSyYnN]$ ]]; then
        break
    fi
    echo "$TXT_INVALID_RESPONSE"
done

if [[ "$confirmar" =~ ^[nN]$ ]]; then
    echo "$TXT_CANCELLED"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 0
fi

actualizar_metadata() {
    local item="$1"
    local fecha_exif="$2"
    "$exiftool_cmd" -config /dev/null -overwrite_original -q -q -P \
        -AllDates="$fecha_exif" \
        -CreateDate="$fecha_exif" \
        -ModifyDate="$fecha_exif" \
        -DateTimeOriginal="$fecha_exif" \
        -XMP:CreateDate="$fecha_exif" \
        -XMP:ModifyDate="$fecha_exif" \
        -XMP:DateTimeOriginal="$fecha_exif" \
        -IPTC:DateCreated="${fecha_exif%% *}" \
        -IPTC:TimeCreated="${fecha_exif#* }" \
        -PNG:CreationTime="$fecha_exif" \
        -QuickTime:CreateDate="$fecha_exif" \
        -QuickTime:ModifyDate="$fecha_exif" \
        -MediaCreateDate="$fecha_exif" \
        -MediaModifyDate="$fecha_exif" \
        -TrackCreateDate="$fecha_exif" \
        -TrackModifyDate="$fecha_exif" \
        -PDF:CreateDate="$fecha_exif" \
        -PDF:ModifyDate="$fecha_exif" \
        -- "$item" >/dev/null 2>&1
}

es_formato_con_metadata() {
    local ruta="$1"
    local nombre="${ruta##*/}"
    local ext="${nombre##*.}"
    if [ "$ext" = "$nombre" ]; then
        return 1
    fi
    ext=$(printf "%s" "$ext" | tr '[:upper:]' '[:lower:]')
    case "$ext" in
        jpg|jpeg|png|heic|heif|tif|tiff|gif|bmp|webp|svg|mp4|mov|m4v|avi|mkv|pdf|doc|docx|xls|xlsx|ppt|pptx|pages|numbers|keynote)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

for ruta in "$@"; do
    if [ -e "$ruta" ]; then
        if [ -d "$ruta" ]; then
            echo "$TXT_PROCESSING_FOLDER $(basename "$ruta")"
            find "$ruta" -mindepth 0 | while read -r item; do
                if [ -e "$item" ]; then
                    if [ -n "$hora_personalizada" ]; then
                        fecha_setfile="$fecha_base $hora_personalizada"
                    else
                        hora_existente=$(stat -f "%SB" -t "%H:%M:%S" "$item" 2>/dev/null)
                        if [ -z "$hora_existente" ]; then
                            hora_existente="00:00:00"
                        fi
                        fecha_setfile="$fecha_base $hora_existente"
                    fi
                    SetFile -d "$fecha_setfile" -m "$fecha_setfile" "$item"
                    if [ "$exiftool_disponible" -eq 1 ] && [ -f "$item" ] && es_formato_con_metadata "$item"; then
                        if [ -n "$hora_personalizada" ]; then
                            hora_exif="$hora_personalizada"
                        else
                            hora_exif=$(stat -f "%SB" -t "%H:%M:%S" "$item" 2>/dev/null)
                            if [ -z "$hora_exif" ]; then
                                hora_exif="00:00:00"
                            fi
                        fi
                        fecha_exif="$fecha_exif_base $hora_exif"
                        actualizar_metadata "$item" "$fecha_exif"
                    fi
                fi
            done
            echo "$TXT_DONE_FOLDER $(basename "$ruta")"
        else
            echo "$TXT_PROCESSING_FILE $(basename "$ruta")"
            if [ -n "$hora_personalizada" ]; then
                fecha_setfile="$fecha_base $hora_personalizada"
            else
                hora_existente=$(stat -f "%SB" -t "%H:%M:%S" "$ruta" 2>/dev/null)
                if [ -z "$hora_existente" ]; then
                    hora_existente="00:00:00"
                fi
                fecha_setfile="$fecha_base $hora_existente"
            fi
            SetFile -d "$fecha_setfile" -m "$fecha_setfile" "$ruta"
            if [ "$exiftool_disponible" -eq 1 ] && [ -f "$ruta" ] && es_formato_con_metadata "$ruta"; then
                if [ -n "$hora_personalizada" ]; then
                    hora_exif="$hora_personalizada"
                else
                    hora_exif=$(stat -f "%SB" -t "%H:%M:%S" "$ruta" 2>/dev/null)
                    if [ -z "$hora_exif" ]; then
                        hora_exif="00:00:00"
                    fi
                fi
                fecha_exif="$fecha_exif_base $hora_exif"
                actualizar_metadata "$ruta" "$fecha_exif"
            fi
            echo "$TXT_DONE_FILE $(basename "$ruta")"
        fi
    else
        echo "$TXT_NOT_FOUND $ruta"
    fi
done

echo
echo "$TXT_FINISHED"
(sleep 2 && osascript -e 'tell application "Terminal" to quit') &
exit 0
