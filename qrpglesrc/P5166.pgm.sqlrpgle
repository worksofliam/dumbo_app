**free

ctl-opt dftactgrp(*no);

dcl-pi P5166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'
/copy 'qrpgleref/P2367.rpgleinc'

dcl-ds theTable extname('T1644') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1644 LIMIT 1;

theCharVar = 'Hello from P5166';
dsply theCharVar;
callp localProc();
P135();
P1649();
P2367();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5166 in the procedure';
end-proc;