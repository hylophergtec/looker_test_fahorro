view: resultado_claveteo {
  sql_table_name: `replica_claveteo_pro_db.resultado_claveteo` ;;

  dimension: algoritmo_asignacion {
    type: string
    sql: ${TABLE}.algoritmo_asignacion ;;
  }
  dimension: categoria {
    type: string
    sql: ${TABLE}.categoria ;;
  }
  dimension: clave_amis {
    type: string
    sql: ${TABLE}.clave_amis ;;
  }
  dimension: consecutivo_vehiculo_flotilla {
    type: string
    sql: ${TABLE}.consecutivo_vehiculo_flotilla ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: datastream_metadata__change_sequence_number {
    type: string
    sql: ${TABLE}.datastream_metadata.change_sequence_number ;;
    group_label: "Datastream Metadata"
    group_item_label: "Change Sequence Number"
  }
  dimension: datastream_metadata__change_type {
    type: string
    sql: ${TABLE}.datastream_metadata.change_type ;;
    group_label: "Datastream Metadata"
    group_item_label: "Change Type"
  }
  dimension: datastream_metadata__sort_keys {
    hidden: yes
    sql: ${TABLE}.datastream_metadata.sort_keys ;;
    group_label: "Datastream Metadata"
    group_item_label: "Sort Keys"
  }
  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }
  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }
  dimension: descripcion_asignacion {
    type: string
    sql: ${TABLE}.descripcion_asignacion ;;
  }
  dimension: descripcion_asignacion_larga {
    type: string
    sql: ${TABLE}.descripcion_asignacion_larga ;;
  }
  dimension: descripcion_original {
    type: string
    sql: ${TABLE}.descripcion_original ;;
  }
  dimension: descripcion_original_preproceso {
    type: string
    sql: ${TABLE}.descripcion_original_preproceso ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.estatus ;;
  }
  dimension_group: fecha_asignacion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_asignacion ;;
  }
  dimension_group: fecha_revision {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fecha_revision ;;
  }
  dimension: id_aseguradora {
    type: string
    sql: ${TABLE}.id_aseguradora ;;
  }
  dimension: id_claveteo {
    type: string
    sql: ${TABLE}.id_claveteo ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: id_flotilla {
    type: string
    sql: ${TABLE}.id_flotilla ;;
  }
  dimension: id_resultado_claveteo {
    type: number
    sql: ${TABLE}.id_resultado_claveteo ;;
  }
  dimension: id_usuario {
    type: string
    sql: ${TABLE}.id_usuario ;;
  }
  dimension: justificacion {
    type: string
    sql: ${TABLE}.justificacion ;;
  }
  dimension: marca_asignacion {
    type: string
    sql: ${TABLE}.marca_asignacion ;;
  }
  dimension: metodo_asignacion {
    type: string
    sql: ${TABLE}.metodo_asignacion ;;
  }
  dimension: modelo_anio {
    type: number
    sql: ${TABLE}.modelo_anio ;;
  }
  dimension: porcentaje_coincidencia {
    type: number
    sql: ${TABLE}.porcentaje_coincidencia ;;
  }
  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }
  dimension: subtipo_asignacion {
    type: string
    sql: ${TABLE}.subtipo_asignacion ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
  }
}

view: resultado_claveteo__datastream_metadata__sort_keys {

  dimension: resultado_claveteo__datastream_metadata__sort_keys {
    type: string
    sql: resultado_claveteo__datastream_metadata__sort_keys ;;
  }
}
