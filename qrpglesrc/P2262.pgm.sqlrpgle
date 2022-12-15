**free

ctl-opt dftactgrp(*no);

dcl-pi P2262;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'

dcl-ds theTable extname('T1606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1606 LIMIT 1;

theCharVar = 'Hello from P2262';
dsply theCharVar;
callp localProc();
P933();
P757();
P746();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2262 in the procedure';
end-proc;