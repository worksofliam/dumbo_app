**free

ctl-opt dftactgrp(*no);

dcl-pi P2497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P2497';
dsply theCharVar;
callp localProc();
P39();
P1375();
P1336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2497 in the procedure';
end-proc;