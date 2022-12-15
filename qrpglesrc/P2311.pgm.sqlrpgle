**free

ctl-opt dftactgrp(*no);

dcl-pi P2311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1550.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'

dcl-ds theTable extname('T749') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T749 LIMIT 1;

theCharVar = 'Hello from P2311';
dsply theCharVar;
callp localProc();
P1550();
P147();
P1439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2311 in the procedure';
end-proc;