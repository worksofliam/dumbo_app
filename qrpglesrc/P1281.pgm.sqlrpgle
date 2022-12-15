**free

ctl-opt dftactgrp(*no);

dcl-pi P1281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P1281';
dsply theCharVar;
callp localProc();
P569();
P526();
P48();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1281 in the procedure';
end-proc;