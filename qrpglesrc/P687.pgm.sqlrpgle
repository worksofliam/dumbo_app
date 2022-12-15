**free

ctl-opt dftactgrp(*no);

dcl-pi P687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'

dcl-ds theTable extname('T633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T633 LIMIT 1;

theCharVar = 'Hello from P687';
dsply theCharVar;
callp localProc();
P256();
P591();
P613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P687 in the procedure';
end-proc;