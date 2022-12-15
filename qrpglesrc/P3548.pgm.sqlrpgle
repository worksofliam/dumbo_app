**free

ctl-opt dftactgrp(*no);

dcl-pi P3548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P1487.rpgleinc'
/copy 'qrpgleref/P1531.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P3548';
dsply theCharVar;
callp localProc();
P193();
P1487();
P1531();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3548 in the procedure';
end-proc;