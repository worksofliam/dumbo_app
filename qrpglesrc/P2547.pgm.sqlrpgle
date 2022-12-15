**free

ctl-opt dftactgrp(*no);

dcl-pi P2547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T1027') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1027 LIMIT 1;

theCharVar = 'Hello from P2547';
dsply theCharVar;
callp localProc();
P1689();
P1697();
P325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2547 in the procedure';
end-proc;