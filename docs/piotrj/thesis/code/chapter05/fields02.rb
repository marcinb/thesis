FieldBuilder.register_class ActiveRecord::ConnectionAdapters::Column do |column|
  case column.type
  when :text
    TextArea.new(column.name)
  when :date
    DateSelect.new(column.name)
  else
    TextField.new(column.name)
  end
end
