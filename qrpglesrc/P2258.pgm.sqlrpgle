**free

ctl-opt dftactgrp(*no);

dcl-pi P2258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1996.rpgleinc'
/copy 'qrpgleref/P1834.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P2258';
dsply theCharVar;
callp localProc();
P1996();
P1834();
P406();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2258 in the procedure';
end-proc;