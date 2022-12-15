**free

ctl-opt dftactgrp(*no);

dcl-pi P2025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1440.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'
/copy 'qrpgleref/P837.rpgleinc'

dcl-ds theTable extname('T1031') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1031 LIMIT 1;

theCharVar = 'Hello from P2025';
dsply theCharVar;
callp localProc();
P1440();
P1391();
P837();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2025 in the procedure';
end-proc;