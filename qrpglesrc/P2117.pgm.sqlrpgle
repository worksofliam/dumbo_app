**free

ctl-opt dftactgrp(*no);

dcl-pi P2117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2066.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1756.rpgleinc'

dcl-ds theTable extname('T511') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T511 LIMIT 1;

theCharVar = 'Hello from P2117';
dsply theCharVar;
callp localProc();
P2066();
P1221();
P1756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2117 in the procedure';
end-proc;