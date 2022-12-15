**free

ctl-opt dftactgrp(*no);

dcl-pi P2410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2252.rpgleinc'
/copy 'qrpgleref/P2100.rpgleinc'
/copy 'qrpgleref/P2372.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P2410';
dsply theCharVar;
callp localProc();
P2252();
P2100();
P2372();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2410 in the procedure';
end-proc;