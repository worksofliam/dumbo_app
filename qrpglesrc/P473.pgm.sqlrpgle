**free

ctl-opt dftactgrp(*no);

dcl-pi P473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P473';
dsply theCharVar;
callp localProc();
P135();
P372();
P353();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P473 in the procedure';
end-proc;