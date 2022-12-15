**free

ctl-opt dftactgrp(*no);

dcl-pi P1594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P1217.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T1865') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1865 LIMIT 1;

theCharVar = 'Hello from P1594';
dsply theCharVar;
callp localProc();
P726();
P1217();
P294();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1594 in the procedure';
end-proc;