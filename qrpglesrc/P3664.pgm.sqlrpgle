**free

ctl-opt dftactgrp(*no);

dcl-pi P3664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P3569.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P3664';
dsply theCharVar;
callp localProc();
P61();
P3569();
P116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3664 in the procedure';
end-proc;