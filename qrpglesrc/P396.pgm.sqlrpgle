**free

ctl-opt dftactgrp(*no);

dcl-pi P396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P396';
dsply theCharVar;
callp localProc();
P259();
P27();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P396 in the procedure';
end-proc;