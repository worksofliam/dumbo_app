**free

ctl-opt dftactgrp(*no);

dcl-pi P1382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'

dcl-ds theTable extname('T1085') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1085 LIMIT 1;

theCharVar = 'Hello from P1382';
dsply theCharVar;
callp localProc();
P1337();
P757();
P253();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1382 in the procedure';
end-proc;