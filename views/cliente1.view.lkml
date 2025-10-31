view: cliente1 {
  sql_table_name: `replica_claveteo_pro_db.cliente` ;;

  dimension: id_cliente {
    primary_key: yes
    type: number
    sql: ${TABLE}.id_cliente ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }

  dimension: id_empresa {
    type: number
    sql: ${TABLE}.id_empresa ;;
  }

  measure: count {
    type: count
  }
####

}
