**free

ctl-opt dftactgrp(*no);

dcl-pi P2060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T681') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T681 LIMIT 1;

theCharVar = 'Hello from P2060';
dsply theCharVar;
callp localProc();
P120();
P565();
P515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2060 in the procedure';
end-proc;