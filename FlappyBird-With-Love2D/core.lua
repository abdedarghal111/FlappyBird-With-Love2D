local coroutines = {cor = {},
  core = function(obj)
    table.insert(self.cor,obj)
  end,
  run = function()
    for i,v in pairs(self.cor) do
      if coroutine.status(v) == "dead" then
        table.remove(self.cor,v)
      else
        coroutine.resume(v)
      end
    end
  end
}
return coroutines
