connection: "looker_fahorro_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: brainko_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: brainko_prod_default_datagroup

explore: empresa {
    join: empresa__datastream_metadata__sort_keys {
      view_label: "Empresa: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${empresa.datastream_metadata__sort_keys}) as empresa__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: cliente {
    join: cliente__datastream_metadata__sort_keys {
      view_label: "Cliente: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${cliente.datastream_metadata__sort_keys}) as cliente__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: resultado_claveteo {
    join: resultado_claveteo__datastream_metadata__sort_keys {
      view_label: "Resultado Claveteo: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${resultado_claveteo.datastream_metadata__sort_keys}) as resultado_claveteo__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: flotilla {
    join: flotilla__datastream_metadata__sort_keys {
      view_label: "Flotilla: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${flotilla.datastream_metadata__sort_keys}) as flotilla__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: permissions {
    join: permissions__datastream_metadata__sort_keys {
      view_label: "Permissions: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${permissions.datastream_metadata__sort_keys}) as permissions__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: rol {
    join: rol__datastream_metadata__sort_keys {
      view_label: "Rol: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${rol.datastream_metadata__sort_keys}) as rol__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: rol_permiso {
    join: rol_permiso__datastream_metadata__sort_keys {
      view_label: "Rol Permiso: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${rol_permiso.datastream_metadata__sort_keys}) as rol_permiso__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: giro {
    join: giro__datastream_metadata__sort_keys {
      view_label: "Giro: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${giro.datastream_metadata__sort_keys}) as giro__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: usuario {
    join: usuario__datastream_metadata__sort_keys {
      view_label: "Usuario: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${usuario.datastream_metadata__sort_keys}) as usuario__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: tipo {
    join: tipo__datastream_metadata__sort_keys {
      view_label: "Tipo: Datastream Metadata Sort Keys"
      sql: LEFT JOIN UNNEST(${tipo.datastream_metadata__sort_keys}) as tipo__datastream_metadata__sort_keys ;;
      relationship: one_to_many
    }
}

explore: cliente1 {
  label: "ClienteEmpresa"
  description: "Cliente y su empresa"

  join: empresa1 {
    sql_on: ${cliente1.id_empresa}=${empresa1.id_empresa} ;;
    relationship: many_to_one
  }
}
