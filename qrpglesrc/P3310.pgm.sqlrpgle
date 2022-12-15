**free

ctl-opt dftactgrp(*no);

dcl-pi P3310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2675.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds theTable extname('T436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T436 LIMIT 1;

theCharVar = 'Hello from P3310';
dsply theCharVar;
callp localProc();
P2675();
P1205();
P259();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3310 in the procedure';
end-proc;