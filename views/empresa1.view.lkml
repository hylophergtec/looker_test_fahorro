view: empresa1 {
  sql_table_name: `replica_claveteo_pro_db.empresa`;;


  dimension: id_empresa {
    primary_key: yes
    type: number
    sql: ${TABLE}.id_empresa ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  measure:  count{
    type: count
  }
}
