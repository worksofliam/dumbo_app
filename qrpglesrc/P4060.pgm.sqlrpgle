**free

ctl-opt dftactgrp(*no);

dcl-pi P4060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'
/copy 'qrpgleref/P3798.rpgleinc'

dcl-ds theTable extname('T732') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T732 LIMIT 1;

theCharVar = 'Hello from P4060';
dsply theCharVar;
callp localProc();
P460();
P1444();
P3798();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4060 in the procedure';
end-proc;