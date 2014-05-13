/* POSIBLES MOVIMIENTOS     1.ROJO** 2.AMARILLO 3-4.Normal
// AMARILLO
caso 1;amariilo -> normal    
caso 2;amarillo -> objectivo

caso 3;normal -> amarillo
caso 4;objectivo -> amarillo

// NORMAL
caso 5;normal -> normal
caso 6;normal -> objectivo

caso 7;objetivo -> normal

//OBJECTIVO
caso 8;objectivo -> objectivo
*/

// argument0 = objeto primer click
// argument1 = objeto segundo click



{
var valor_amarillo = 25;
var valor_movimiento = 3;
var valor_entrar_franja = 5;
var valor_salir_franja = 7;

if( ((argument0).image_index==2 ) && ((argument1).image_index >2))    // caso 1;amariilo -> normal 
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score -= valor_amarillo ; // sale amarilla
        global.completado -= 1;  //sale un completado
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score += valor_amarillo;
        global.completado += 1;  //incrementa un completado
    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index==2 ) && ((argument1).image_index ==1))    // caso 2;amarillo -> objectivo
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score += valor_entrar_franja;
        score -= valor_amarillo;        
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score += valor_amarillo;
        score -= valor_salir_franja;

    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index>2 ) && ((argument1).image_index >2))    // caso 3;normal -> amarillo
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score += valor_amarillo;
        global.completado += 1;  //incrementa un completado
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score -= valor_amarillo;
        global.completado -= 1;
    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index==1 ) && ((argument1).image_index ==2))    // caso 4;objectivo -> amarillo
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score -= valor_salir_franja;
        score += valor_amarillo;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score += valor_entrar_franja;
        score -= valor_amarillo;   
    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index>2 ) && ((argument1).image_index >2))    // caso 5;normal -> normal
{
    //AQUI NO IMPORTA NADA
    score -= valor_movimiento;
}
else if( ((argument0).image_index>2 ) && ((argument1).image_index ==1))    // caso 6;normal -> objectivo
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score += valor_entrar_franja;
        global.completado +=1;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score -= valor_salir_franja;
        global.completado -=1;
    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index==1 ) && ((argument1).image_index >2))    // caso 7;objetivo -> normal
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score -= valor_salir_franja;
        global.completado -=1;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score += valor_entrar_franja;
        global.completado +=1;
    }
    else
    {
       score -= valor_movimiento; 
    }
}
else if( ((argument0).image_index==1 ) && ((argument1).image_index ==1))    // caso 8;objectivo -> objectivo
{
    if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) &&(ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )    // CASO DE MOVIMIENTO EN AREA SOMBREADA
    {
        score -= valor_movimiento;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument0)!=-1) )       // sombreada -> no sombreada
    {
        score += valor_entrar_franja;
        score -= valor_salir_franja;
    }
    else if( (ds_list_find_index(global.id_area_sombreada,argument1)!=-1) )       // no sombreada -> sombreada   
    {
        score += valor_entrar_franja;
        score -= valor_salir_franja;
    }
    else
    {
       score -= valor_movimiento; 
    }
}
}
