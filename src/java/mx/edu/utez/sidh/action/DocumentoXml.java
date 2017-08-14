package mx.edu.utez.sidh.action;

import java.io.File;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import mx.edu.utez.sidh.bean.Disponibilidad;
import mx.edu.utez.sidh.bean.Usuario;
import mx.edu.utez.sidh.dao.DaoUsuario;
import org.apache.struts2.ServletActionContext;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Attr;

/**
 * Clase que se encargara de convertir una colección de disponibilidades a un
 * archivo XML para el programa aSc
 *
 * @author Derick
 */
public class DocumentoXml {

    /**
     * Método que crea el archivo de importación al programa aSc Debe recibir
     * una lista de usuarios con sus disponibilidades ya cargadas
     *
     * @throws Exception
     */
    public String generarDocumento() throws Exception {

        
        DaoUsuario dao = new DaoUsuario();
        String path = this.getClass().getResource("/../../exports").getPath();
        
        ArrayList<Usuario> docentes = dao.getUsuariosDisponibilidades();
        
        
        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentBuilder = documentBuilderFactory.newDocumentBuilder();

        Document document = documentBuilder.newDocument();

        //crea el nodo principal timetable
        Element timetable = document.createElement("timetable");
        //agregalo al documento
        document.appendChild(timetable);

        //crea los atributos del nodo principal
        Attr importtype = document.createAttribute("importtype");
        importtype.setValue("database");
        Attr options = document.createAttribute("options");
        options.setValue("export:idprefix:MyApp");

        //agregar los atributos al nodo
        timetable.setAttributeNode(importtype);
        timetable.setAttributeNode(options);

        //crear los periodos////////////////////////////////////////////////////
        Element periods = document.createElement("periods");
        //agregalo al documento
        timetable.appendChild(periods);

        //ponerle sus atributos
        Attr periodsOptions = document.createAttribute("options");
        periodsOptions.setValue("canadd,export:silent");
        Attr periodsColumns = document.createAttribute("columns");
        periodsColumns.setValue("period,name,short,starttime,endtime");
        periods.setAttributeNode(periodsOptions);
        periods.setAttributeNode(periodsColumns);

        int horaInicio = 7;
        for (int i = 1; i < 15; i++) {
            //elemento
            Element period = document.createElement("period");

            //atributos
            Attr name = document.createAttribute("name");
            Attr shortt = document.createAttribute("short");
            Attr periodo = document.createAttribute("period");
            name.setValue("" + i);
            shortt.setValue("" + i);
            periodo.setValue("" + i);
            Attr starttime = document.createAttribute("starttime");
            starttime.setValue("" + horaInicio + ":00");
            Attr endtime = document.createAttribute("endtime");
            endtime.setValue("" + (horaInicio + 1) + ":00");

            period.setAttributeNode(name);
            period.setAttributeNode(shortt);
            period.setAttributeNode(periodo);
            period.setAttributeNode(starttime);
            period.setAttributeNode(endtime);

            periods.appendChild(period);

            horaInicio++;
        }

        //agregar los dias//////////////////////////////////////////////////////
        Element daydefs = document.createElement("daysdefs");
        //agregalo al documento
        timetable.appendChild(daydefs);

        //ponerle sus atributos
        Attr daydefsOptions = document.createAttribute("options");
        daydefsOptions.setValue("canadd,export:silent");
        Attr daydefsColumns = document.createAttribute("columns");
        daydefsColumns.setValue("id,days,name,short");
        daydefs.setAttributeNode(daydefsOptions);
        daydefs.setAttributeNode(daydefsColumns);

        String[] dias = {"Cualquier día", "Cada día", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"};
        String[] diasShort = {"X", "E", "Lu", "Ma", "Mi", "Ju", "Vi", "Sá"};
        String[] diasValores = {
            "100000,010000,001000,000100,000010,000001",
            "111111",
            "100000",
            "010000",
            "001000",
            "000100",
            "000010",
            "000001"
        };
        for (int i = 0; i < 8; i++) {
            //elemento
            Element daydef = document.createElement("daysdef");

            //atributos
            Attr daysdefId = document.createAttribute("id");
            Attr daysdefDays = document.createAttribute("days");
            Attr daysdefName = document.createAttribute("name");
            Attr daysdefShort = document.createAttribute("short");
            daysdefId.setValue("" + (i + 1));
            daysdefDays.setValue("" + diasValores[i]);
            daysdefName.setValue("" + dias[i]);
            daysdefShort.setValue("" + diasShort[i]);

            daydef.setAttributeNode(daysdefId);
            daydef.setAttributeNode(daysdefDays);
            daydef.setAttributeNode(daysdefName);
            daydef.setAttributeNode(daysdefShort);

            daydefs.appendChild(daydef);

        }

        //agregar la semana/////////////////////////////////////////////////////
        Element weeksdefs = document.createElement("weeksdefs");
        //agregalo al documento
        timetable.appendChild(weeksdefs);

        //ponerle sus atributos
        Attr weeksdefsOptions = document.createAttribute("options");
        weeksdefsOptions.setValue("canadd,export:silent");
        Attr weeksdefsColumns = document.createAttribute("columns");
        weeksdefsColumns.setValue("id,weeks,name,short");
        weeksdefs.setAttributeNode(weeksdefsOptions);
        weeksdefs.setAttributeNode(weeksdefsColumns);

        //elemento dentro de semana
        Element weeksdef = document.createElement("weeksdef");
        Attr weeksdefId = document.createAttribute("id");
        weeksdefId.setValue("1");
        Attr weeksdefName = document.createAttribute("name");
        weeksdefName.setValue("Todas las semanas");
        Attr weeksdefShort = document.createAttribute("short");
        weeksdefShort.setValue("Todas");
        Attr weeksdefWeeks = document.createAttribute("weeks");
        weeksdefWeeks.setValue("1");
        
        weeksdef.setAttributeNode(weeksdefId);
        weeksdef.setAttributeNode(weeksdefName);
        weeksdef.setAttributeNode(weeksdefShort);
        weeksdef.setAttributeNode(weeksdefWeeks);

        weeksdefs.appendChild(weeksdef);

        //agregar el año ///////////////////////////////////////////////////////
        Element termsdefs = document.createElement("termsdefs");
        //agregalo al documento
        timetable.appendChild(termsdefs);

        //ponerle sus atributos
        Attr termsdefsOptions = document.createAttribute("options");
        termsdefsOptions.setValue("canadd,export:silent");
        Attr termsdefsColumns = document.createAttribute("columns");
        termsdefsColumns.setValue("id,terms,name,short");
        termsdefs.setAttributeNode(termsdefsOptions);
        termsdefs.setAttributeNode(termsdefsColumns);

        //elemento dentro de semana
        Element termsdef = document.createElement("termsdef");
        Attr termsdefId = document.createAttribute("id");
        termsdefId.setValue("2");
        Attr termsdefName = document.createAttribute("name");
        termsdefName.setValue("Todas el año");
        Attr termsdefShort = document.createAttribute("short");
        termsdefShort.setValue("Año");
        Attr termsdefTerms = document.createAttribute("terms");
        termsdefTerms.setValue("1");
        
        termsdef.setAttributeNode(termsdefId);
        termsdef.setAttributeNode(termsdefName);
        termsdef.setAttributeNode(termsdefShort);
        termsdef.setAttributeNode(termsdefTerms);

        termsdefs.appendChild(termsdef);

        //Ahora si viene lo shido///////////////////////////////////////////////
        // Agregar los profesores //////////////////////////////////////////////
        
        //nodo docente
        Element teachers = document.createElement("teachers");
        //agregalo al documento
        timetable.appendChild(teachers);
        
        //atributos para el nodo
        Attr teachersOptions = document.createAttribute("options");
        teachersOptions.setValue("canadd,export:silent");
        Attr teachersColumns = document.createAttribute("columns");
        teachersColumns.setValue("id,name,short,color,email,timeoff");
        teachers.setAttributeNode(teachersOptions);
        teachers.setAttributeNode(teachersColumns);

        //Disponibilidad[0]=Lunes
        //Disponibilidad[1]=Martes
        //Disponibilidad[2]=Miercoles
        //Disponibilidad[3]=Jueves
        //Disponibilidad[4]=Viernes
        //Disponibilidad[5]=Sabado
        int id=1;
        for (Usuario docente : docentes) {
            
            //elemento docente
            Element teacher = document.createElement("teacher");
            Attr teacherId = document.createAttribute("id");
            Attr teacherName = document.createAttribute("name");
            Attr teacherShort = document.createAttribute("short");
            Attr teacherColor = document.createAttribute("color");
            Attr teacherEmail = document.createAttribute("email");
            Attr teacherTimeOff = document.createAttribute("timeoff");
            
            teacherId.setValue(""+id);
            teacherName.setValue(docente.getNombre()+" "+docente.getApellidoPaterno()+" "+ docente.getApellidoMaterno());
            teacherShort.setValue(docente.getNombre().substring(0, 1)+docente.getApellidoPaterno().substring(0, 1));
            teacherColor.setValue("#00FF00");
            teacherEmail.setValue(docente.getEmail());
            
            //por cada dia, arma una string
            String dispo = "";
            for (Disponibilidad disp : docente.getDisponibilidad()) {
                
                dispo+=".";
                dispo+= disp.getH7();
                dispo+= disp.getH8();
                dispo+= disp.getH9();
                dispo+= disp.getH10();
                dispo+= disp.getH11();
                dispo+= disp.getH12();
                dispo+= disp.getH13();
                dispo+= disp.getH14();
                dispo+= disp.getH15();
                dispo+= disp.getH16();
                dispo+= disp.getH17();
                dispo+= disp.getH18();
                dispo+= disp.getH19();
                dispo+= disp.getH20();
                dispo+=",";
                
            }  
            dispo=dispo.subSequence(0, dispo.length()-1)+"";
            //agregar el resultado de arriba al valor del atributo
            teacherTimeOff.setValue(dispo);           
            
            teacher.setAttributeNode(teacherId);
            teacher.setAttributeNode(teacherName);
            teacher.setAttributeNode(teacherShort);
            teacher.setAttributeNode(teacherColor);
            teacher.setAttributeNode(teacherEmail);
            teacher.setAttributeNode(teacherTimeOff);
            
            
            //finalizar docente
            teachers.appendChild(teacher);
            id++;
        }
        ////////////////////////////////////////////////////////////////////////
        


        //crear el archivvo fisico
        TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(document);


        StreamResult streamResult = new StreamResult(new File(path+"disp.xml"));


        transformer.transform(source, streamResult);
        return "success";
    }

}


