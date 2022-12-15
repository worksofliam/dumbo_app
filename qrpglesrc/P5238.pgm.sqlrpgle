**free

ctl-opt dftactgrp(*no);

dcl-pi P5238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3015.rpgleinc'
/copy 'qrpgleref/P1347.rpgleinc'
/copy 'qrpgleref/P1950.rpgleinc'

dcl-ds theTable extname('T1366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1366 LIMIT 1;

theCharVar = 'Hello from P5238';
dsply theCharVar;
callp localProc();
P3015();
P1347();
P1950();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5238 in the procedure';
end-proc;