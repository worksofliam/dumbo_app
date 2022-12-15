**free

ctl-opt dftactgrp(*no);

dcl-pi P2737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P2689.rpgleinc'

dcl-ds theTable extname('T1704') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1704 LIMIT 1;

theCharVar = 'Hello from P2737';
dsply theCharVar;
callp localProc();
P901();
P1136();
P2689();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2737 in the procedure';
end-proc;