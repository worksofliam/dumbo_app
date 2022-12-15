**free

ctl-opt dftactgrp(*no);

dcl-pi P120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T20') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T20 LIMIT 1;

theCharVar = 'Hello from P120';
dsply theCharVar;
callp localProc();
P69();
P108();
P51();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P120 in the procedure';
end-proc;