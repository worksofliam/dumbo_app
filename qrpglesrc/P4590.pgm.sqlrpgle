**free

ctl-opt dftactgrp(*no);

dcl-pi P4590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P1990.rpgleinc'
/copy 'qrpgleref/P1850.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P4590';
dsply theCharVar;
callp localProc();
P1409();
P1990();
P1850();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4590 in the procedure';
end-proc;