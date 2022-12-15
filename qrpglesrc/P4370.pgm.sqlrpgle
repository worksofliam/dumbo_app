**free

ctl-opt dftactgrp(*no);

dcl-pi P4370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1800.rpgleinc'
/copy 'qrpgleref/P3564.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'

dcl-ds theTable extname('T1825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1825 LIMIT 1;

theCharVar = 'Hello from P4370';
dsply theCharVar;
callp localProc();
P1800();
P3564();
P2038();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4370 in the procedure';
end-proc;