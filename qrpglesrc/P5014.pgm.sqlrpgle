**free

ctl-opt dftactgrp(*no);

dcl-pi P5014;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4232.rpgleinc'
/copy 'qrpgleref/P3344.rpgleinc'
/copy 'qrpgleref/P2134.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P5014';
dsply theCharVar;
callp localProc();
P4232();
P3344();
P2134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5014 in the procedure';
end-proc;