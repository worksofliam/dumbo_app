**free

ctl-opt dftactgrp(*no);

dcl-pi P1517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1099.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T1021') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1021 LIMIT 1;

theCharVar = 'Hello from P1517';
dsply theCharVar;
callp localProc();
P1099();
P1499();
P35();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1517 in the procedure';
end-proc;