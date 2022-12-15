**free

ctl-opt dftactgrp(*no);

dcl-pi P3797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P2514.rpgleinc'

dcl-ds theTable extname('T509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T509 LIMIT 1;

theCharVar = 'Hello from P3797';
dsply theCharVar;
callp localProc();
P2132();
P503();
P2514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3797 in the procedure';
end-proc;