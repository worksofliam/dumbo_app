**free

ctl-opt dftactgrp(*no);

dcl-pi P2086;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P1449.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P2086';
dsply theCharVar;
callp localProc();
P338();
P327();
P1449();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2086 in the procedure';
end-proc;