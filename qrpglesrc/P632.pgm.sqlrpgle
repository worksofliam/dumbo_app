**free

ctl-opt dftactgrp(*no);

dcl-pi P632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds theTable extname('T1088') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1088 LIMIT 1;

theCharVar = 'Hello from P632';
dsply theCharVar;
callp localProc();
P598();
P432();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P632 in the procedure';
end-proc;