view: usuario {
  sql_table_name: `replica_claveteo_pro_db.usuario` ;;

  dimension: activo {
    type: number
    sql: ${TABLE}.activo ;;
  }
  dimension: archivado {
    type: number
    sql: ${TABLE}.archivado ;;
  }
  dimension: correo {
    type: string
    sql: ${TABLE}.correo ;;
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
  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }
  dimension: id_rol {
    type: number
    sql: ${TABLE}.id_rol ;;
  }
  dimension: materno {
    type: string
    sql: ${TABLE}.materno ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.nombre ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: paterno {
    type: string
    sql: ${TABLE}.paterno ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  measure: count {
    type: count
  }
}

view: usuario__datastream_metadata__sort_keys {

  dimension: usuario__datastream_metadata__sort_keys {
    type: string
    sql: usuario__datastream_metadata__sort_keys ;;
  }
}
