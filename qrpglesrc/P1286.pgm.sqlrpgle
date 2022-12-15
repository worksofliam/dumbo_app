**free

ctl-opt dftactgrp(*no);

dcl-pi P1286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'

dcl-ds theTable extname('T855') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T855 LIMIT 1;

theCharVar = 'Hello from P1286';
dsply theCharVar;
callp localProc();
P383();
P780();
P390();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1286 in the procedure';
end-proc;