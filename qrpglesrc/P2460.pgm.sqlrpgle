**free

ctl-opt dftactgrp(*no);

dcl-pi P2460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1301.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P2460';
dsply theCharVar;
callp localProc();
P1301();
P963();
P2345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2460 in the procedure';
end-proc;