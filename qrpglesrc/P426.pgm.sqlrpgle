**free

ctl-opt dftactgrp(*no);

dcl-pi P426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds theTable extname('T299') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T299 LIMIT 1;

theCharVar = 'Hello from P426';
dsply theCharVar;
callp localProc();
P109();
P162();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P426 in the procedure';
end-proc;