**free

ctl-opt dftactgrp(*no);

dcl-pi P2309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1984.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'

dcl-ds theTable extname('T990') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T990 LIMIT 1;

theCharVar = 'Hello from P2309';
dsply theCharVar;
callp localProc();
P1984();
P682();
P310();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2309 in the procedure';
end-proc;