macro renderer(filename)
  render "src/views/#{{{filename}}}.ecr", "src/views/layout.ecr"
end