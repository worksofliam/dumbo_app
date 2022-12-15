**free

ctl-opt dftactgrp(*no);

dcl-pi P778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P778';
dsply theCharVar;
callp localProc();
P177();
P109();
P601();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P778 in the procedure';
end-proc;