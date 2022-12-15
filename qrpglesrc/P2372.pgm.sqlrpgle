**free

ctl-opt dftactgrp(*no);

dcl-pi P2372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1191.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P2372';
dsply theCharVar;
callp localProc();
P1191();
P1022();
P1096();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2372 in the procedure';
end-proc;