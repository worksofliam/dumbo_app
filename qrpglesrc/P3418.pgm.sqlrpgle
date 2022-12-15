**free

ctl-opt dftactgrp(*no);

dcl-pi P3418;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P1956.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P3418';
dsply theCharVar;
callp localProc();
P1544();
P164();
P1956();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3418 in the procedure';
end-proc;