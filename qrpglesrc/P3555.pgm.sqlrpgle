**free

ctl-opt dftactgrp(*no);

dcl-pi P3555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P3555';
dsply theCharVar;
callp localProc();
P1527();
P669();
P1164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3555 in the procedure';
end-proc;