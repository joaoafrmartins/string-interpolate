String::interpolate ?= (o) ->
  @replace /{([^{}]*)}/g, (a, b) ->
    r = o[b]
    if typeof r == 'string' or typeof r == 'number' then r else a
