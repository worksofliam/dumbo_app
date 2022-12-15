**free

ctl-opt dftactgrp(*no);

dcl-pi P2451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P596.rpgleinc'

dcl-ds theTable extname('T996') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T996 LIMIT 1;

theCharVar = 'Hello from P2451';
dsply theCharVar;
callp localProc();
P1397();
P1516();
P596();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2451 in the procedure';
end-proc;