lir.vo: lir.v

%.vo: %.v
	coqc -Q . LIR $<


lir.vo: lir.v maps.vo
dyn.vo: dyn.v maps.vo lir.vo
precision.vo: precision.v maps.vo lir.vo dyn.vo
symprec.vo: symprec.v precision.vo maps.vo lir.vo
pallene.vo: pallene.v maps.vo lir.vo
lua.vo: lua.v maps.vo pallene.vo lir.vo dyn.vo
