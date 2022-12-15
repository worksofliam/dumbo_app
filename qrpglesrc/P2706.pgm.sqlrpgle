**free

ctl-opt dftactgrp(*no);

dcl-pi P2706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P1187.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P2706';
dsply theCharVar;
callp localProc();
P247();
P897();
P1187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2706 in the procedure';
end-proc;