**free

ctl-opt dftactgrp(*no);

dcl-pi P1252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T294 LIMIT 1;

theCharVar = 'Hello from P1252';
dsply theCharVar;
callp localProc();
P718();
P79();
P604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1252 in the procedure';
end-proc;