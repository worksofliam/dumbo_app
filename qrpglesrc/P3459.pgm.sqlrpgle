**free

ctl-opt dftactgrp(*no);

dcl-pi P3459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1208.rpgleinc'
/copy 'qrpgleref/P1671.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'

dcl-ds theTable extname('T1595') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1595 LIMIT 1;

theCharVar = 'Hello from P3459';
dsply theCharVar;
callp localProc();
P1208();
P1671();
P307();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3459 in the procedure';
end-proc;