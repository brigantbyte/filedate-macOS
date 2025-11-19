#!/bin/bash

locale=$(defaults read -g AppleLocale 2>/dev/null)

case "$lang_code" in
  es)
    TXT_DRAG="Arrastra archivos o carpetas y pulsa Enter:"
    TXT_NO_INPUT="No se ha recibido ninguna ruta."
    TXT_SETFILE_MISSING="No se encontró el comando SetFile."
    TXT_INSTALL_XCODE="Instala las herramientas de línea de comandos con: xcode-select --install"
    TXT_YEAR_PROMPT="Introduce el nuevo año (AAAA):"
    TXT_MONTH_PROMPT="Introduce el nuevo mes (1-12):"
    TXT_DAY_PROMPT="Introduce el nuevo día (1-31):"
    TXT_EMPTY_FIELD="Valor vacío. Saliendo."
    TXT_INVALID_NUMBER="Formato numérico no válido."
    TXT_INVALID_DATE="La fecha indicada no es válida."
    TXT_FUTURE_DATE="No se permiten fechas futuras."
    TXT_CONFIRM_HEADER="Se usará esta fecha de creación para todos los elementos:"
    TXT_CONFIRM_QUESTION="¿Seguro que quieres continuar? (y/s)"
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
    TXT_YEAR_PROMPT="Introduce o novo ano (AAAA):"
    TXT_MONTH_PROMPT="Introduce o novo mes (1-12):"
    TXT_DAY_PROMPT="Introduce o novo día (1-31):"
    TXT_EMPTY_FIELD="Valor baleiro. Saíndo."
    TXT_INVALID_NUMBER="Formato numérico non válido."
    TXT_INVALID_DATE="A data indicada non é válida."
    TXT_FUTURE_DATE="Non se permiten datas futuras."
    TXT_CONFIRM_HEADER="Empregarase esta data de creación para todos os elementos:"
    TXT_CONFIRM_QUESTION="Seguro que queres continuar? (y/s)"
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
    TXT_YEAR_PROMPT="Idatzi urte berria (UUUU):"
    TXT_MONTH_PROMPT="Idatzi hilabete berria (1-12):"
    TXT_DAY_PROMPT="Idatzi egun berria (1-31):"
    TXT_EMPTY_FIELD="Balio hutsa. Irteten."
    TXT_INVALID_NUMBER="Zenbaki formatu baliogabea."
    TXT_INVALID_DATE="Emandako data baliogabea da."
    TXT_FUTURE_DATE="Etorkizuneko datak ez dira onartzen."
    TXT_CONFIRM_HEADER="Sorkuntza-data hau erabiliko da elementu guztientzat:"
    TXT_CONFIRM_QUESTION="Ziur jarraitu nahi duzula? (y/s)"
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
    TXT_YEAR_PROMPT="Entrez la nouvelle année (AAAA) :"
    TXT_MONTH_PROMPT="Entrez le nouveau mois (1-12) :"
    TXT_DAY_PROMPT="Entrez le nouveau jour (1-31) :"
    TXT_EMPTY_FIELD="Valeur vide. Fermeture."
    TXT_INVALID_NUMBER="Format numérique invalide."
    TXT_INVALID_DATE="La date indiquée n'est pas valide."
    TXT_FUTURE_DATE="Les dates futures ne sont pas autorisées."
    TXT_CONFIRM_HEADER="Cette date de création sera utilisée pour tous les éléments :"
    TXT_CONFIRM_QUESTION="Voulez-vous vraiment continuer ? (y/s)"
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
    TXT_YEAR_PROMPT="Gib das neue Jahr ein (JJJJ):"
    TXT_MONTH_PROMPT="Gib den neuen Monat ein (1-12):"
    TXT_DAY_PROMPT="Gib den neuen Tag ein (1-31):"
    TXT_EMPTY_FIELD="Leerer Wert. Beende."
    TXT_INVALID_NUMBER="Ungültiges Zahlenformat."
    TXT_INVALID_DATE="Das eingegebene Datum ist ungültig."
    TXT_FUTURE_DATE="Zukünftige Daten sind nicht erlaubt."
    TXT_CONFIRM_HEADER="Dieses Erstellungsdatum wird für alle Elemente verwendet:"
    TXT_CONFIRM_QUESTION="Bist du sicher, dass du fortfahren möchtest? (y/s)"
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
    TXT_YEAR_PROMPT="Inserisci il nuovo anno (AAAA):"
    TXT_MONTH_PROMPT="Inserisci il nuovo mese (1-12):"
    TXT_DAY_PROMPT="Inserisci il nuovo giorno (1-31):"
    TXT_EMPTY_FIELD="Valore vuoto. Uscita."
    TXT_INVALID_NUMBER="Formato numerico non valido."
    TXT_INVALID_DATE="La data indicata non è valida."
    TXT_FUTURE_DATE="Le date future non sono permesse."
    TXT_CONFIRM_HEADER="Questa data di creazione verrà usata per tutti gli elementi:"
    TXT_CONFIRM_QUESTION="Sei sicuro di voler continuare? (y/s)"
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
    TXT_YEAR_PROMPT="Introduza o novo ano (AAAA):"
    TXT_MONTH_PROMPT="Introduza o novo mês (1-12):"
    TXT_DAY_PROMPT="Introduza o novo dia (1-31):"
    TXT_EMPTY_FIELD="Valor vazio. A sair."
    TXT_INVALID_NUMBER="Formato numérico inválido."
    TXT_INVALID_DATE="A data indicada não é válida."
    TXT_FUTURE_DATE="Datas futuras não são permitidas."
    TXT_CONFIRM_HEADER="Esta data de criação será usada para todos os elementos:"
    TXT_CONFIRM_QUESTION="Tem a certeza de que pretende continuar? (y/s)"
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
    TXT_YEAR_PROMPT="Введіть новий рік (РРРР):"
    TXT_MONTH_PROMPT="Введіть новий місяць (1-12):"
    TXT_DAY_PROMPT="Введіть новий день (1-31):"
    TXT_EMPTY_FIELD="Порожнє значення. Вихід."
    TXT_INVALID_NUMBER="Невірний числовий формат."
    TXT_INVALID_DATE="Вказана дата є недійсною."
    TXT_FUTURE_DATE="Майбутні дати не дозволені."
    TXT_CONFIRM_HEADER="Ця дата створення буде використана для всіх елементів:"
    TXT_CONFIRM_QUESTION="Ви впевнені, що хочете продовжити? (y/s)"
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
    TXT_YEAR_PROMPT="Iontráil an bhliain nua (BBBB):"
    TXT_MONTH_PROMPT="Iontráil an mhí nua (1-12):"
    TXT_DAY_PROMPT="Iontráil an lá nua (1-31):"
    TXT_EMPTY_FIELD="Luach folamh. Ag scor."
    TXT_INVALID_NUMBER="Formáid uimhreach neamhbhailí."
    TXT_INVALID_DATE="Níl an dáta tugtha bailí."
    TXT_FUTURE_DATE="Ní cheadaítear dátaí amach anseo."
    TXT_CONFIRM_HEADER="Bainfear úsáid as an dáta cruthaithe seo do gach mír:"
    TXT_CONFIRM_QUESTION="An bhfuil tú cinnte gur mian leat leanúint ar aghaidh? (y/s)"
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
    TXT_YEAR_PROMPT="Ange det nya året (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Ange den nya månaden (1-12):"
    TXT_DAY_PROMPT="Ange den nya dagen (1-31):"
    TXT_EMPTY_FIELD="Tomt värde. Avslutar."
    TXT_INVALID_NUMBER="Ogiltigt nummerformat."
    TXT_INVALID_DATE="Angivet datum är ogiltigt."
    TXT_FUTURE_DATE="Framtida datum är inte tillåtna."
    TXT_CONFIRM_HEADER="Detta skapelsedatum kommer att användas för alla objekt:"
    TXT_CONFIRM_QUESTION="Är du säker på att du vill fortsätta? (y/s)"
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
    TXT_YEAR_PROMPT="Indtast det nye år (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Indtast den nye måned (1-12):"
    TXT_DAY_PROMPT="Indtast den nye dag (1-31):"
    TXT_EMPTY_FIELD="Tom værdi. Afslutter."
    TXT_INVALID_NUMBER="Ugyldigt talformat."
    TXT_INVALID_DATE="Den angivne dato er ugyldig."
    TXT_FUTURE_DATE="Fremtidige datoer er ikke tilladt."
    TXT_CONFIRM_HEADER="Denne oprettelsesdato vil blive brugt for alle elementer:"
    TXT_CONFIRM_QUESTION="Er du sikker på, at du vil fortsætte? (y/s)"
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
    TXT_YEAR_PROMPT="Voer het nieuwe jaar in (JJJJ):"
    TXT_MONTH_PROMPT="Voer de nieuwe maand in (1-12):"
    TXT_DAY_PROMPT="Voer de nieuwe dag in (1-31):"
    TXT_EMPTY_FIELD="Lege waarde. Stoppen."
    TXT_INVALID_NUMBER="Ongeldig getalformaat."
    TXT_INVALID_DATE="De opgegeven datum is ongeldig."
    TXT_FUTURE_DATE="Toekomstige datums zijn niet toegestaan."
    TXT_CONFIRM_HEADER="Deze aanmaakdatum wordt gebruikt voor alle items:"
    TXT_CONFIRM_QUESTION="Weet je zeker dat je wilt doorgaan? (y/s)"
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
    TXT_YEAR_PROMPT="Skriv inn det nye året (ÅÅÅÅ):"
    TXT_MONTH_PROMPT="Skriv inn den nye måneden (1-12):"
    TXT_DAY_PROMPT="Skriv inn den nye dagen (1-31):"
    TXT_EMPTY_FIELD="Tom verdi. Avslutter."
    TXT_INVALID_NUMBER="Ugyldig tallformat."
    TXT_INVALID_DATE="Den angitte datoen er ugyldig."
    TXT_FUTURE_DATE="Fremtidige datoer er ikke tillatt."
    TXT_CONFIRM_HEADER="Denne opprettelsesdatoen vil bli brukt for alle elementer:"
    TXT_CONFIRM_QUESTION="Er du sikker på at du vil fortsette? (y/s)"
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
    TXT_YEAR_PROMPT="Sláðu inn nýtt ár (ÁÁÁÁ):"
    TXT_MONTH_PROMPT="Sláðu inn nýjan mánuð (1-12):"
    TXT_DAY_PROMPT="Sláðu inn nýjan dag (1-31):"
    TXT_EMPTY_FIELD="Tómt gildi. Hætti."
    TXT_INVALID_NUMBER="Ógilt talnasnið."
    TXT_INVALID_DATE="Uppgefin dagsetning er ógild."
    TXT_FUTURE_DATE="Framtíðardagsetningar eru ekki leyfðar."
    TXT_CONFIRM_HEADER="Þessi stofndagsetning verður notuð fyrir öll atriði:"
    TXT_CONFIRM_QUESTION="Ertu viss um að þú viljir halda áfram? (y/s)"
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
    TXT_YEAR_PROMPT="Anna uusi vuosi (VVVV):"
    TXT_MONTH_PROMPT="Anna uusi kuukausi (1-12):"
    TXT_DAY_PROMPT="Anna uusi päivä (1-31):"
    TXT_EMPTY_FIELD="Tyhjä arvo. Poistutaan."
    TXT_INVALID_NUMBER="Virheellinen numeroformaatti."
    TXT_INVALID_DATE="Annettu päivämäärä ei ole kelvollinen."
    TXT_FUTURE_DATE="Tulevat päivämäärät eivät ole sallittuja."
    TXT_CONFIRM_HEADER="Tätä luontipäivää käytetään kaikille kohteille:"
    TXT_CONFIRM_QUESTION="Haluatko varmasti jatkaa? (y/s)"
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
    TXT_YEAR_PROMPT="请输入新的年份 (YYYY)："
    TXT_MONTH_PROMPT="请输入新的月份 (1-12)："
    TXT_DAY_PROMPT="请输入新的日期 (1-31)："
    TXT_EMPTY_FIELD="值为空。正在退出。"
    TXT_INVALID_NUMBER="数字格式无效。"
    TXT_INVALID_DATE="指定的日期无效。"
    TXT_FUTURE_DATE="不允许未来的日期。"
    TXT_CONFIRM_HEADER="以下创建日期将用于所有项目："
    TXT_CONFIRM_QUESTION="确定要继续吗？(y/s)"
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
    TXT_YEAR_PROMPT="新しい年 (YYYY) を入力してください:"
    TXT_MONTH_PROMPT="新しい月 (1-12) を入力してください:"
    TXT_DAY_PROMPT="新しい日 (1-31) を入力してください:"
    TXT_EMPTY_FIELD="値が空です。終了します。"
    TXT_INVALID_NUMBER="数値の形式が無効です。"
    TXT_INVALID_DATE="指定された日付は無効です。"
    TXT_FUTURE_DATE="未来の日付は許可されていません。"
    TXT_CONFIRM_HEADER="この作成日時がすべての項目に使用されます:"
    TXT_CONFIRM_QUESTION="続行してよろしいですか？ (y/s)"
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
    TXT_YEAR_PROMPT="새 연도 (YYYY)를 입력하세요:"
    TXT_MONTH_PROMPT="새 달 (1-12)을 입력하세요:"
    TXT_DAY_PROMPT="새 날짜 (1-31)를 입력하세요:"
    TXT_EMPTY_FIELD="값이 비어 있습니다. 종료합니다."
    TXT_INVALID_NUMBER="잘못된 숫자 형식입니다."
    TXT_INVALID_DATE="입력한 날짜가 유효하지 않습니다."
    TXT_FUTURE_DATE="미래 날짜는 허용되지 않습니다."
    TXT_CONFIRM_HEADER="이 생성 날짜가 모든 항목에 사용됩니다:"
    TXT_CONFIRM_QUESTION="계속하시겠습니까? (y/s)"
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
    TXT_YEAR_PROMPT="Nhập năm mới (YYYY):"
    TXT_MONTH_PROMPT="Nhập tháng mới (1-12):"
    TXT_DAY_PROMPT="Nhập ngày mới (1-31):"
    TXT_EMPTY_FIELD="Giá trị trống. Đang thoát."
    TXT_INVALID_NUMBER="Định dạng số không hợp lệ."
    TXT_INVALID_DATE="Ngày được chỉ định không hợp lệ."
    TXT_FUTURE_DATE="Không cho phép ngày trong tương lai."
    TXT_CONFIRM_HEADER="Ngày tạo này sẽ được dùng cho tất cả các mục:"
    TXT_CONFIRM_QUESTION="Bạn có chắc muốn tiếp tục? (y/s)"
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
    TXT_YEAR_PROMPT="Шинэ жилийг оруулна уу (YYYY):"
    TXT_MONTH_PROMPT="Шинэ сарыг оруулна уу (1-12):"
    TXT_DAY_PROMPT="Шинэ өдрийг оруулна уу (1-31):"
    TXT_EMPTY_FIELD="Хоосон утга. Гарах гэж байна."
    TXT_INVALID_NUMBER="Тооны формат буруу байна."
    TXT_INVALID_DATE="Оруулсан огноо хүчин төгөлдөр биш."
    TXT_FUTURE_DATE="Ирээдүйн огноог зөвшөөрөхгүй."
    TXT_CONFIRM_HEADER="Энэ үүсгэсэн огноо бүх элементэд ашиглагдана:"
    TXT_CONFIRM_QUESTION="Үргэлжлүүлэхдээ итгэлтэй байна уу? (y/s)"
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
    TXT_YEAR_PROMPT="नया वर्ष दर्ज करें (YYYY):"
    TXT_MONTH_PROMPT="नया महीना दर्ज करें (1-12):"
    TXT_DAY_PROMPT="नया दिन दर्ज करें (1-31):"
    TXT_EMPTY_FIELD="मान खाली है। बाहर निकल रहा है."
    TXT_INVALID_NUMBER="अमान्य संख्या स्वरूप."
    TXT_INVALID_DATE="दिया गया दिनांक मान्य नहीं है."
    TXT_FUTURE_DATE="भविष्य की तिथियाँ अनुमत नहीं हैं."
    TXT_CONFIRM_HEADER="यह निर्माण तिथि सभी आइटम के लिए उपयोग की जाएगी:"
    TXT_CONFIRM_QUESTION="क्या आप वाकई जारी रखना चाहते हैं? (y/s)"
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
    TXT_YEAR_PROMPT="Ievadiet jauno gadu (YYYY):"
    TXT_MONTH_PROMPT="Ievadiet jauno mēnesi (1-12):"
    TXT_DAY_PROMPT="Ievadiet jauno dienu (1-31):"
    TXT_EMPTY_FIELD="Tukša vērtība. Izvade."
    TXT_INVALID_NUMBER="Nederīgs skaitļa formāts."
    TXT_INVALID_DATE="Norādītais datums nav derīgs."
    TXT_FUTURE_DATE="Nākotnes datumi nav atļauti."
    TXT_CONFIRM_HEADER="Šis izveides datums tiks izmantots visiem vienumiem:"
    TXT_CONFIRM_QUESTION="Vai tiešām vēlaties turpināt? (y/s)"
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
    TXT_YEAR_PROMPT="Įveskite naujus metus (YYYY):"
    TXT_MONTH_PROMPT="Įveskite naują mėnesį (1-12):"
    TXT_DAY_PROMPT="Įveskite naują dieną (1-31):"
    TXT_EMPTY_FIELD="Tuščia reikšmė. Išeinama."
    TXT_INVALID_NUMBER="Neteisingas skaičiaus formatas."
    TXT_INVALID_DATE="Nurodyta data yra neteisinga."
    TXT_FUTURE_DATE="Būsimų datų naudoti negalima."
    TXT_CONFIRM_HEADER="Ši sukūrimo data bus naudojama visiems elementams:"
    TXT_CONFIRM_QUESTION="Ar tikrai norite tęsti? (y/s)"
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
    TXT_YEAR_PROMPT="Sisesta uus aasta (YYYY):"
    TXT_MONTH_PROMPT="Sisesta uus kuu (1-12):"
    TXT_DAY_PROMPT="Sisesta uus päev (1-31):"
    TXT_EMPTY_FIELD="Tühi väärtus. Väljun."
    TXT_INVALID_NUMBER="Vigane numbri vorming."
    TXT_INVALID_DATE="Määratud kuupäev ei ole kehtiv."
    TXT_FUTURE_DATE="Tulevased kuupäevad ei ole lubatud."
    TXT_CONFIRM_HEADER="Seda loomiskuupäeva kasutatakse kõigi elementide jaoks:"
    TXT_CONFIRM_QUESTION="Kas oled kindel, et soovid jätkata? (y/s)"
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
    TXT_YEAR_PROMPT="Lakait ar bloaz nevez (BBBB):"
    TXT_MONTH_PROMPT="Lakait ar miz nevez (1-12):"
    TXT_DAY_PROMPT="Lakait an deiz nevez (1-31):"
    TXT_EMPTY_FIELD="Gwerzh goullo. O kuitaat."
    TXT_INVALID_NUMBER="Furmad niverel didalvoudek."
    TXT_INVALID_DATE="N'eo ket talvoudek an deiziad roet."
    TXT_FUTURE_DATE="N'eo ket aotreet deizioù da zont."
    TXT_CONFIRM_HEADER="Ar deiziad krouiñ-mañ a vo implijet evit an holl elfenn:"
    TXT_CONFIRM_QUESTION="Ha sur oc'h e fell deoc'h kenderc'hel? (y/s)"
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
    TXT_YEAR_PROMPT="Cuir a-steach a' bhliadhna ùr (BBBB):"
    TXT_MONTH_PROMPT="Cuir a-steach am mìos ùr (1-12):"
    TXT_DAY_PROMPT="Cuir a-steach an latha ùr (1-31):"
    TXT_EMPTY_FIELD="Luach falamh. A' fàgail."
    TXT_INVALID_NUMBER="Fòrmat àireimh mì-dhligheach."
    TXT_INVALID_DATE="Chan eil an ceann-là seo dligheach."
    TXT_FUTURE_DATE="Chan eil cinn-latha san àm ri teachd ceadaichte."
    TXT_CONFIRM_HEADER="Thèid an ceann-là cruthachaidh seo a chleachdadh airson gach nì:"
    TXT_CONFIRM_QUESTION="A bheil thu cinnteach gu bheil thu airson leantainn air adhart? (y/s)"
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
    TXT_YEAR_PROMPT="Rhowch y flwyddyn newydd (BBBB):"
    TXT_MONTH_PROMPT="Rhowch y mis newydd (1-12):"
    TXT_DAY_PROMPT="Rhowch y diwrnod newydd (1-31):"
    TXT_EMPTY_FIELD="Gwerth gwag. Yn cau."
    TXT_INVALID_NUMBER="Fformat rhif annilys."
    TXT_INVALID_DATE="Nid yw'r dyddiad a roddwyd yn ddilys."
    TXT_FUTURE_DATE="Ni chaniateir dyddiadau yn y dyfodol."
    TXT_CONFIRM_HEADER="Defnyddir y dyddiad creu hwn ar gyfer pob eitem:"
    TXT_CONFIRM_QUESTION="Ydych chi'n siŵr eich bod am barhau? (y/s)"
    TXT_CANCELLED="Wedi'i ganslo."
    TXT_PROCESSING_FOLDER="➜ Yn prosesu ffolder:"
    TXT_DONE_FOLDER="✔ Dyddiadau wedi'u newid yn:"
    TXT_PROCESSING_FILE="➜ Yn prosesu ffeil:"
    TXT_DONE_FILE="✔ Ffeil wedi'i diweddaru:"
    TXT_NOT_FOUND="✖ Heb ei ganfod:"
    TXT_FINISHED="Gweithred wedi'i chwblhau."
    ;;
  frp)
    TXT_DRAG="Trâs fiçyés ou dossiérs et pèz Enter:"
    TXT_NO_INPUT="Nion tchamin reçua."
    TXT_SETFILE_MISSING="Lo comando SetFile n'a pas étâ trovâ."
    TXT_INSTALL_XCODE="Instala los outis de la linha de comando avouéc: xcode-select --install"
    TXT_YEAR_PROMPT="Mets l'an nouvél (AAAA):"
    TXT_MONTH_PROMPT="Mets lo mèns nouvél (1-12):"
    TXT_DAY_PROMPT="Mets lo jorn nouvél (1-31):"
    TXT_EMPTY_FIELD="Valor voueda. On sôrt."
    TXT_INVALID_NUMBER="Format de nombra pas valido."
    TXT_INVALID_DATE="Lo dè dat donâ n'est pas valido."
    TXT_FUTURE_DATE="Les dè dat dens l'avenî son pas authorisâ."
    TXT_CONFIRM_HEADER="Ceti dè dat de crèacion serat utilisâ por tôs los èlèmens:"
    TXT_CONFIRM_QUESTION="Ètes-té sur de vouélêr continuar? (y/s)"
    TXT_CANCELLED="Anulâ."
    TXT_PROCESSING_FOLDER="➜ Dossiér en cors de traitament:"
    TXT_DONE_FOLDER="✔ Dè dat changiês dens:"
    TXT_PROCESSING_FILE="➜ Ficyé en cors de traitament:"
    TXT_DONE_FILE="✔ Ficyé mes a jorn:"
    TXT_NOT_FOUND="✖ Pas trovâ:"
    TXT_FINISHED="Operacion acabâ."
    ;;
  ar)
    TXT_DRAG="اسحب الملفات أو المجلدات ثم اضغط Enter:"
    TXT_NO_INPUT="لم يتم استلام أي مسار."
    TXT_SETFILE_MISSING="لم يتم العثور على الأمر SetFile."
    TXT_INSTALL_XCODE="ثبّت أدوات سطر الأوامر باستخدام: xcode-select --install"
    TXT_YEAR_PROMPT="أدخل السنة الجديدة (YYYY):"
    TXT_MONTH_PROMPT="أدخل الشهر الجديد (1-12):"
    TXT_DAY_PROMPT="أدخل اليوم الجديد (1-31):"
    TXT_EMPTY_FIELD="قيمة فارغة. سيتم الخروج."
    TXT_INVALID_NUMBER="تنسيق رقم غير صالح."
    TXT_INVALID_DATE="التاريخ المحدد غير صالح."
    TXT_FUTURE_DATE="لا يُسمح بالتواريخ المستقبلية."
    TXT_CONFIRM_HEADER="سيتم استخدام تاريخ الإنشاء هذا لجميع العناصر:"
    TXT_CONFIRM_QUESTION="هل أنت متأكد أنك تريد المتابعة؟ (y/s)"
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
    TXT_YEAR_PROMPT="Εισαγάγετε το νέο έτος (YYYY):"
    TXT_MONTH_PROMPT="Εισαγάγετε τον νέο μήνα (1-12):"
    TXT_DAY_PROMPT="Εισαγάγετε τη νέα ημέρα (1-31):"
    TXT_EMPTY_FIELD="Κενή τιμή. Έξοδος."
    TXT_INVALID_NUMBER="Μη έγκυρη μορφή αριθμού."
    TXT_INVALID_DATE="Η καθορισμένη ημερομηνία δεν είναι έγκυρη."
    TXT_FUTURE_DATE="Δεν επιτρέπονται μελλοντικές ημερομηνίες."
    TXT_CONFIRM_HEADER="Αυτή η ημερομηνία δημιουργίας θα χρησιμοποιηθεί για όλα τα στοιχεία:"
    TXT_CONFIRM_QUESTION="Είστε σίγουρος/η ότι θέλετε να συνεχίσετε; (y/s)"
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
    TXT_YEAR_PROMPT="Introduceți noul an (YYYY):"
    TXT_MONTH_PROMPT="Introduceți noua lună (1-12):"
    TXT_DAY_PROMPT="Introduceți noua zi (1-31):"
    TXT_EMPTY_FIELD="Valoare goală. Se iese."
    TXT_INVALID_NUMBER="Format numeric invalid."
    TXT_INVALID_DATE="Data indicată nu este validă."
    TXT_FUTURE_DATE="Datele din viitor nu sunt permise."
    TXT_CONFIRM_HEADER="Această dată de creare va fi folosită pentru toate elementele:"
    TXT_CONFIRM_QUESTION="Sigur doriți să continuați? (y/s)"
    TXT_CANCELLED="Anulat."
    TXT_PROCESSING_FOLDER="➜ Se procesează dosarul:"
    TXT_DONE_FOLDER="✔ Date modificate în:"
    TXT_PROCESSING_FILE="➜ Se procesează fișierul:"
    TXT_DONE_FILE="✔ Fișier actualizat:"
    TXT_NOT_FOUND="✖ Negăsit:"
    TXT_FINISHED="Operațiune finalizată."
    ;;
  *)
    ;;
esac

echo
echo "$TXT_DRAG"
read -r linea
echo

if [ -z "$linea" ]; then
    echo "$TXT_NO_INPUT"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 0
fi

eval "set -- $linea"

if ! command -v SetFile >/dev/null 2>&1; then
    echo "$TXT_SETFILE_MISSING"
    echo "$TXT_INSTALL_XCODE"
    (sleep 4 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)
current_year_num=$current_year
current_month_num=$current_month
current_day_num=$current_day

echo "$TXT_YEAR_PROMPT"
read -r anio

if [ -z "$anio" ]; then
    echo "$TXT_EMPTY_FIELD"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if ! [[ "$anio" =~ ^[0-9]{4}$ ]]; then
    echo "$TXT_INVALID_NUMBER"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

anio_num=$anio

if (( anio_num > current_year_num )); then
    echo "$TXT_FUTURE_DATE"
    (sleep 3 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

echo "$TXT_MONTH_PROMPT"
read -r mes

if [ -z "$mes" ]; then
    echo "$TXT_EMPTY_FIELD"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if ! [[ "$mes" =~ ^[0-9]{1,2}$ ]]; then
    echo "$TXT_INVALID_NUMBER"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

mes_num=$mes

if (( mes_num < 1 || mes_num > 12 )); then
    echo "$TXT_INVALID_DATE"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if (( anio_num == current_year_num && mes_num > current_month_num )); then
    echo "$TXT_FUTURE_DATE"
    (sleep 3 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

echo "$TXT_DAY_PROMPT"
read -r dia

if [ -z "$dia" ]; then
    echo "$TXT_EMPTY_FIELD"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if ! [[ "$dia" =~ ^[0-9]{1,2}$ ]]; then
    echo "$TXT_INVALID_NUMBER"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

dia_num=$dia

if (( dia_num < 1 || dia_num > 31 )); then
    echo "$TXT_INVALID_DATE"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
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
        echo "$TXT_INVALID_DATE"
        (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
        exit 1
        ;;
esac

if (( dia_num > max_dia )); then
    echo "$TXT_INVALID_DATE"
    (sleep 3 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if (( anio_num == current_year_num && mes_num == current_month_num && dia_num > current_day_num )); then
    echo "$TXT_FUTURE_DATE"
    (sleep 3 && osascript -e 'tell application "Terminal" to quit') &
    exit 1
fi

if [ ${#mes} -eq 1 ]; then
    mes="0$mes"
fi

if [ ${#dia} -eq 1 ]; then
    dia="0$dia"
fi

fecha_setfile="$mes/$dia/$anio 00:00:00"

echo
echo "$TXT_CONFIRM_HEADER"
echo "$fecha_setfile"
echo "$TXT_CONFIRM_QUESTION"
read -r confirmar

if [[ "$confirmar" != "y" && "$confirmar" != "Y" && "$confirmar" != "s" && "$confirmar" != "S" ]]; then
    echo "$TXT_CANCELLED"
    (sleep 2 && osascript -e 'tell application "Terminal" to quit') &
    exit 0
fi

for ruta in "$@"; do
    if [ -e "$ruta" ]; then
        if [ -d "$ruta" ]; then
            echo "$TXT_PROCESSING_FOLDER $(basename "$ruta")"
            find "$ruta" -mindepth 0 | while read -r item; do
                if [ -e "$item" ]; then
                    SetFile -d "$fecha_setfile" "$item"
                fi
            done
            echo "$TXT_DONE_FOLDER $(basename "$ruta")"
        else
            echo "$TXT_PROCESSING_FILE $(basename "$ruta")"
            SetFile -d "$fecha_setfile" "$ruta"
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