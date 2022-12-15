**free

ctl-opt dftactgrp(*no);

dcl-pi P283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T588') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T588 LIMIT 1;

theCharVar = 'Hello from P283';
dsply theCharVar;
callp localProc();
P51();
P234();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P283 in the procedure';
end-proc;