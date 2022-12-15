**free

ctl-opt dftactgrp(*no);

dcl-pi P2681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P2061.rpgleinc'
/copy 'qrpgleref/P1796.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P2681';
dsply theCharVar;
callp localProc();
P1649();
P2061();
P1796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2681 in the procedure';
end-proc;