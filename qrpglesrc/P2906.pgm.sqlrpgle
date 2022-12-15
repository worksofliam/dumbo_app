**free

ctl-opt dftactgrp(*no);

dcl-pi P2906;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P2777.rpgleinc'

dcl-ds theTable extname('T929') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T929 LIMIT 1;

theCharVar = 'Hello from P2906';
dsply theCharVar;
callp localProc();
P1232();
P839();
P2777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2906 in the procedure';
end-proc;