# BundlexDist

Problem:

```
09:16:51.774 [info]  Application bundlex_dist exited: exited in: BundlexDist.Application.start(:normal, [])
    ** (EXIT) an exception was raised:
        ** (MatchError) no match of right hand side value: {:error, {{:badmatch, {:error, :connect_to_cnode}}, [{ExDTLS, :init, 1, [file: 'lib/ex_dtls.ex', line: 151]}, {:gen_server, :init_it, 2, [file: 'gen_server.erl', line: 423]}, {:gen_server, :init_it, 6, [file: 'gen_server.erl', line: 390]}, {:proc_lib, :init_p_do_apply, 3, [file: 'proc_lib.erl', line: 226]}]}}
            (bundlex_dist 0.1.0) lib/bundlex_dist/application.ex:18: BundlexDist.Application.configure_certs/0
            (bundlex_dist 0.1.0) lib/bundlex_dist/application.ex:9: BundlexDist.Application.start/2
            (kernel 8.0.1) application_master.erl:293: :application_master.start_it_old/4
{"Kernel pid terminated",application_controller,"{application_start_failure,bundlex_dist,{bad_return,{{'Elixir.BundlexDist.Application',start,[normal,[]]},{'EXIT',{{badmatch,{error,{{badmatch,{error,connect_to_cnode}},[{'Elixir.ExDTLS',init,1,[{file,\"lib/ex_dtls.ex\"},{line,151}]},{gen_server,init_it,2,[{file,\"gen_server.erl\"},{line,423}]},{gen_server,init_it,6,[{file,\"gen_server.erl\"},{line,390}]},{proc_lib,init_p_do_apply,3,[{file,\"proc_lib.erl\"},{line,226}]}]}}},[{'Elixir.BundlexDist.Application',configure_certs,0,[{file,\"lib/bundlex_dist/application.ex\"},{line,18}]},{'Elixir.BundlexDist.Application',start,2,[{file,\"lib/bundlex_dist/application.ex\"},{line,9}]},{application_master,start_it_old,4,[{file,\"application_master.erl\"},{line,293}]}]}}}}}"}
Kernel pid terminated (application_controller) ({application_start_failure,bundlex_dist,{bad_return,{{'Elixir.BundlexDist.Application',start,[normal,[]]},{'EXIT',{{badmatch,{error,{{badmatch,{error,co
```

## Setup

```shell
bin/dev/doctor
bin/dev/start
```
