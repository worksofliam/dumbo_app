**free

ctl-opt dftactgrp(*no);

dcl-pi P3909;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2766.rpgleinc'
/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'

dcl-ds theTable extname('T113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T113 LIMIT 1;

theCharVar = 'Hello from P3909';
dsply theCharVar;
callp localProc();
P2766();
P1409();
P2113();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3909 in the procedure';
end-proc;