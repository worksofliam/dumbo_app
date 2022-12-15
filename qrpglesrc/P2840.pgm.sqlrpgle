**free

ctl-opt dftactgrp(*no);

dcl-pi P2840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P843.rpgleinc'
/copy 'qrpgleref/P1209.rpgleinc'
/copy 'qrpgleref/P1689.rpgleinc'

dcl-ds theTable extname('T994') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T994 LIMIT 1;

theCharVar = 'Hello from P2840';
dsply theCharVar;
callp localProc();
P843();
P1209();
P1689();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2840 in the procedure';
end-proc;