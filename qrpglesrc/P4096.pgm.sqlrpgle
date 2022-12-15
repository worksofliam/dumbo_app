**free

ctl-opt dftactgrp(*no);

dcl-pi P4096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2447.rpgleinc'
/copy 'qrpgleref/P1306.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'

dcl-ds theTable extname('T1183') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1183 LIMIT 1;

theCharVar = 'Hello from P4096';
dsply theCharVar;
callp localProc();
P2447();
P1306();
P2201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4096 in the procedure';
end-proc;