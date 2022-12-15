**free

ctl-opt dftactgrp(*no);

dcl-pi P627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P627';
dsply theCharVar;
callp localProc();
P35();
P179();
P380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P627 in the procedure';
end-proc;