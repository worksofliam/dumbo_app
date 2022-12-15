**free

ctl-opt dftactgrp(*no);

dcl-pi P304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P304';
dsply theCharVar;
callp localProc();
P2();
P182();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P304 in the procedure';
end-proc;