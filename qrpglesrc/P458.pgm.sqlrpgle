**free

ctl-opt dftactgrp(*no);

dcl-pi P458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P458';
dsply theCharVar;
callp localProc();
P282();
P352();
P346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P458 in the procedure';
end-proc;