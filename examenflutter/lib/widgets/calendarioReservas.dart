import 'package:examenflutter/themes/app_themes_screen15.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarioWidget extends StatefulWidget {
  const CalendarioWidget({Key? key}) : super(key: key);

  @override
  State<CalendarioWidget> createState() => _CalendarioWidgetState();
}

bool click = false;

class _CalendarioWidgetState extends State<CalendarioWidget> {
  DateTime fecha = DateTime.now();

  void _diaSeleccionado(DateTime day, DateTime focusedDay) {
    setState(() {
      fecha = day;
      color = AppTheme.primary;
      cancelar = 'reservar';
    });
  }

  CalendarFormat formatoCal = CalendarFormat.week;

  Color color = AppTheme.primary;
  String vacio = '';
  String cancelar = 'Reservar';

  ListTile monitor = const ListTile(
    title: Text('Raúl Gonzalez Blanco'),
    leading: Icon(Icons.sports_basketball),
  );

  ListTile sala = const ListTile(
    title: Text('Pista 3'),
    leading: Icon(Icons.place),
  );

  ListTile hora = const ListTile(
    title: Text('90 minutos'),
    leading: Icon(Icons.place),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horarios y Reservas'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Title(
              color: AppTheme.primary,
              child: Text('No te pierdas la próxima clase!',
                  style: GoogleFonts.prompt(
                      fontSize: 20, color: AppTheme.primary))),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(164, 211, 211, 211),
              child: TableCalendar(
                locale: 'en_US',
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, fecha),
                focusedDay: fecha,
                firstDay: DateTime.utc(2022, 01, 01),
                lastDay: DateTime.utc(2023, 12, 12),
                calendarFormat: formatoCal,
                onDaySelected: _diaSeleccionado,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  backgroundColor: const Color.fromARGB(175, 252, 252, 252),
                  iconColor: AppTheme.primary,
                  leading: const Icon(Icons.sports_soccer),
                  title: Text(
                    'Clase Futbol',
                    style: GoogleFonts.bebasNeue(
                        fontSize: 20, color: AppTheme.primary),
                    textAlign: TextAlign.center,
                  ),
                  children: [
                    const ListTile(
                      title: Text('Monitor'),
                      subtitle: Text('Raúl Gonzalez Blanco'),
                      leading: Icon(Icons.person),
                    ),
                    const ListTile(
                      title: Text('Pista'),
                      subtitle: Text('Pista principal de futbol'),
                      leading: Icon(Icons.location_on_rounded),
                    ),
                    const ListTile(
                      title: Text('Duración'),
                      subtitle: Text('60 min'),
                      leading: Icon(Icons.timer),
                    ),
                    const ListTile(
                      title: Text('Nivel'),
                      subtitle: Text('Moderada'),
                      leading: Icon(Icons.handshake),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: color),
                      child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            cancelar,
                            textAlign: TextAlign.center,
                          )),
                      onPressed: () {
                        setState(() {
                          color = Colors.grey;
                        });
                        if (color == Colors.grey) {
                          color = AppTheme.primary;
                          cancelar = 'Reservar';
                        }

                        if (vacio == '') {
                          color = AppTheme.primary;
                          vacio =
                              'Clase reservada para el día: ${fecha.toString().split(" ")[0]}';
                        }

                        color = Colors.grey;
                        cancelar = 'Cancelar reserva';
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        vacio,
                        style: GoogleFonts.bebasNeue(
                            fontSize: 20, color: AppTheme.primary),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
