json.array! @scenes do |scene|
  json.id scene.id
  json.summary scene.summary
  json.editor_id scene.editor_id
  json.p1 scene.p1
  json.p2 scene.p2

  json.decisions do
    json.array! scene.decisions do |decision|
      json.id decision.id
      json.description decision.description

      json.previous_editor_id decision.previous_editor_id
      json.next_editor_id decision.next_editor_id

      json.p1 decision.p1
      json.p2 decision.p2
      json.p3 decision.p3
      json.p4 decision.p4
      json.p5 decision.p5
      json.p6 decision.p6
      json.p7 decision.p7
      json.p8 decision.p8
    end
  end
end
