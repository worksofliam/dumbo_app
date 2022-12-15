**free

ctl-opt dftactgrp(*no);

dcl-pi P352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'

dcl-ds theTable extname('T439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T439 LIMIT 1;

theCharVar = 'Hello from P352';
dsply theCharVar;
callp localProc();
P76();
P156();
P282();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P352 in the procedure';
end-proc;