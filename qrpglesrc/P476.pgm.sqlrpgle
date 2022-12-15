**free

ctl-opt dftactgrp(*no);

dcl-pi P476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds theTable extname('T787') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T787 LIMIT 1;

theCharVar = 'Hello from P476';
dsply theCharVar;
callp localProc();
P282();
P105();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P476 in the procedure';
end-proc;