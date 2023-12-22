class UserDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
    id:         { source: "User.id" },
    first_name: { source: "User.first_name" },
    last_name:  { source: "User.last_name" },
    email:      { source: "User.email", formatter: -> (o) { o.upcase } },
    bio:        { source: "User.bio" },
    }  
  end

  def data
    records.map do |record|
      {
       id:         record.id,
       first_name: record.first_name,
       last_name:  record.last_name,
       email:      record.email,
       bio:        record.bio,
       DT_RowId:   record.id,
      }
    end
  end

  def get_raw_records
    # insert query here
     User.all
  end

end
