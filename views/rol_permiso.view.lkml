view: rol_permiso {
  sql_table_name: `replica_claveteo_pro_db.rol_permiso` ;;

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
  dimension: id_permiso {
    type: number
    sql: ${TABLE}.id_permiso ;;
  }
  dimension: id_rol {
    type: number
    sql: ${TABLE}.id_rol ;;
  }
  measure: count {
    type: count
  }
}

view: rol_permiso__datastream_metadata__sort_keys {

  dimension: rol_permiso__datastream_metadata__sort_keys {
    type: string
    sql: rol_permiso__datastream_metadata__sort_keys ;;
  }
}
