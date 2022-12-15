**free

ctl-opt dftactgrp(*no);

dcl-pi P471;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P471';
dsply theCharVar;
callp localProc();
P214();
P51();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P471 in the procedure';
end-proc;