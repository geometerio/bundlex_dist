defmodule BundlexDist.Application do
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    configure_certs()
    children = []

    opts = [strategy: :one_for_one, name: BundlexDist.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp configure_certs do
    Logger.info("[app@#{inspect(self())}] configuring certs")
    {:ok, pid} = ExDTLS.start_link(client_mode: false, dtls_srtp: true)
    {:ok, _pkey} = ExDTLS.get_pkey(pid)
    {:ok, _cert} = ExDTLS.get_cert(pid)
    ExDTLS.stop(pid)
  end
end
