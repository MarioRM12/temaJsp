package org.iesvdm.calendario;
import java.util.Calendar;
import java.util.Scanner;

public class calendario {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Introduce el nombre del mes (en inglés, la primera letra mayúscula):");
        String nombreMes = scanner.nextLine();

        System.out.println("Introduce el año:");
        int año = scanner.nextInt();

        // Crear instancia de Calendar
        Calendar calendario = Calendar.getInstance();

        // Establecer el año y mes
        calendario.set(Calendar.YEAR, año);

        int mes;
        switch (nombreMes) {
            case "Enero":
                mes = Calendar.JANUARY;
                break;
            case "Febrero":
                mes = Calendar.FEBRUARY;
                break;
            case "Marzo":
                mes = Calendar.MARCH;
                break;
            case "Abril":
                mes = Calendar.APRIL;
                break;
            case "Mayo":
                mes = Calendar.MAY;
                break;
            case "Junio":
                mes = Calendar.JUNE;
                break;
            case "Julio":
                mes = Calendar.JULY;
                break;
            case "Agosto":
                mes = Calendar.AUGUST;
                break;
            case "Septiembre":
                mes = Calendar.SEPTEMBER;
                break;
            case "Octubre":
                mes = Calendar.OCTOBER;
                break;
            case "Noviembre":
                mes = Calendar.NOVEMBER;
                break;
            case "Diciembre":
                mes = Calendar.DECEMBER;
                break;
            default:
                System.out.println("Mes no válido.");
                return;
        }

        calendario.set(Calendar.MONTH, mes);
        calendario.set(Calendar.DAY_OF_MONTH, 1);

        // Obtener el número de días en el mes
        int totalDias = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);

        // Obtener el día de la semana del primer día del mes
        int diaSemana = calendario.get(Calendar.DAY_OF_WEEK);

        System.out.println("  L  M  X  J  V  S  D");

        // Espacios en blanco hasta el primer día del mes
        for (int i = 1; i < diaSemana; i++) {
            System.out.print("   ");
        }

        // Imprimir los días del mes
        for (int i = 1; i <= totalDias; i++) {
            System.out.printf("%3d", i);
            if ((i + diaSemana - 1) % 7 == 0 || i == totalDias) {
                System.out.println();
            }
        }
    }
}
