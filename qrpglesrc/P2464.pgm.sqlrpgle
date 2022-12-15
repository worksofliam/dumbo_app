**free

ctl-opt dftactgrp(*no);

dcl-pi P2464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1323.rpgleinc'
/copy 'qrpgleref/P2344.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T1789') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1789 LIMIT 1;

theCharVar = 'Hello from P2464';
dsply theCharVar;
callp localProc();
P1323();
P2344();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2464 in the procedure';
end-proc;