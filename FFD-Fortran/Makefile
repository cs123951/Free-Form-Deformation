CF = gfortran
LDFLAG = -framework Accelerate

executable: var.o main.o readsoliddata.o readsoliddatamultiple.o loadffdinitialdata.f createffdmesh.o createffdrectexact.o createffdmeshaxis.o attachinitialmesh.o attachinitialmeshaxis.o attachffdnewton.o attachffdnewtonconstraint.o setffddataautomultiple.o setffddataaxis.o fillffddataaxis.o updateffdbox.o deformlattice.o modshapeffd.o printinitialdata.o printinitialdatamultiple.o printfinaldata.o
	$(CF) -o $@ main.o readsoliddata.o readsoliddatamultiple.o loadffdinitialdata.f createffdmesh.o createffdrectexact.o createffdmeshaxis.o attachinitialmesh.o attachinitialmeshaxis.o var.o attachffdnewton.o attachffdnewtonconstraint.o setffddataautomultiple.o setffddataaxis.o fillffddataaxis.o updateffdbox.o printinitialdata.o printinitialdatamultiple.o printfinaldata.o deformlattice.o modshapeffd.o $(LDFLAG)
main.o: main.f
	$(CF) -c main.f	

var.o: var.f
	rm var.mod
	$(CF) -c var.f

attachffdnewtonconstraint.o: attachffdnewtonconstraint.f
	$(CF) -c attachffdnewtonconstraint.f  

readsoliddata.o: readsoliddata.f
	$(CF) -c readsoliddata.f

loadffdinitialdata.o: loadffdinitialdata.f
	$(CF) -c loadffdinitialdata.f

createffdmesh.o: createffdmesh.f
	$(CF) -c createffdmesh.f

createffdmeshaxis.o: createffdmeshaxis.f
	$(CF) -c createffdmeshaxis.f

createffdrectexact.o: createffdrectexact.f
	$(CF) -c createffdrectexact.f

attachinitialmesh.o: attachinitialmesh.f
	$(CF) -c attachinitialmesh.f

attachinitialmeshaxis.o: attachinitialmeshaxis.f
	$(CF) -c attachinitialmeshaxis.f

fillffddataaxis.o: fillffddataaxis.f
	$(CF) -c fillffddataaxis.f

readsoliddatamultiple.o: readsoliddatamultiple.f
	$(CF) -c readsoliddatamultiple.f

setffddataautomultiple.o: setffddataautomultiple.f
	$(CF) -c setffddataautomultiple.f

setffddataaxis.o: setffddataaxis.f
	$(CF) -c setffddataaxis.f

updateffdbox.o: updateffdbox.f
	$(CF) -c updateffdbox.f

attachffdnewton.o: attachffdnewton.f
	$(CF) -c attachffdnewton.f

printinitialdata.o: printinitialdata.f
	$(CF) -c printinitialdata.f

printinitialdatamultiple.o: printinitialdatamultiple.f
	$(CF) -c printinitialdatamultiple.f

deformlattice.o: deformlattice.f
	$(CF) -c deformlattice.f

printfinaldata.o: printfinaldata.f
	$(CF) -c printfinaldata.f

modshapeffd.o: modshapeffd.f
	$(CF) -c modshapeffd.f



