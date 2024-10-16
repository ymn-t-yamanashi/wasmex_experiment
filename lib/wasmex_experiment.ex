defmodule WasmexExperiment do
  @moduledoc """
  Documentation for `WasmexExperiment`.
  """

  def hello do

    {:ok, bytes} = File.read("./hoge_wasm/target/wasm32-unknown-unknown/debug/hoge_wasm.wasm")
    #{:ok, bytes} = File.read("./onyx/add.wasm")
    {:ok, module} = Wasmex.Module.compile(bytes)
    {:ok, instance} = Wasmex.start_link(%{module: module})
    Wasmex.call_function(instance, "hoge", [10])
    |> IO.inspect()

    :world
  end
end
