**free

ctl-opt dftactgrp(*no);

dcl-pi P1830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T2') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T2 LIMIT 1;

theCharVar = 'Hello from P1830';
dsply theCharVar;
callp localProc();
P186();
P161();
P656();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1830 in the procedure';
end-proc;