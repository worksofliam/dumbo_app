**free

ctl-opt dftactgrp(*no);

dcl-pi P3399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P713.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'

dcl-ds theTable extname('T797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T797 LIMIT 1;

theCharVar = 'Hello from P3399';
dsply theCharVar;
callp localProc();
P47();
P713();
P1824();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3399 in the procedure';
end-proc;