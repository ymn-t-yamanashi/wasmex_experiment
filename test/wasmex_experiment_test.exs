defmodule WasmexExperimentTest do
  use ExUnit.Case
  doctest WasmexExperiment

  test "greets the world" do
    assert WasmexExperiment.hello() == :world
  end
end
