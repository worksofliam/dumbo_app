**free

ctl-opt dftactgrp(*no);

dcl-pi P2042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P1696.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P2042';
dsply theCharVar;
callp localProc();
P136();
P1696();
P1566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2042 in the procedure';
end-proc;