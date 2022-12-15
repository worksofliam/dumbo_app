**free

ctl-opt dftactgrp(*no);

dcl-pi P397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P397';
dsply theCharVar;
callp localProc();
P282();
P340();
P79();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P397 in the procedure';
end-proc;