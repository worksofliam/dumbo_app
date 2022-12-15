**free

ctl-opt dftactgrp(*no);

dcl-pi P2353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P1183.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P2353';
dsply theCharVar;
callp localProc();
P1524();
P129();
P1183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2353 in the procedure';
end-proc;