**free

ctl-opt dftactgrp(*no);

dcl-pi P408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P408';
dsply theCharVar;
callp localProc();
P133();
P345();
P254();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P408 in the procedure';
end-proc;