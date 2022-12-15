**free

ctl-opt dftactgrp(*no);

dcl-pi P177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P177';
dsply theCharVar;
callp localProc();
P26();
P131();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P177 in the procedure';
end-proc;