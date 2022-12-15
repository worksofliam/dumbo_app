**free

ctl-opt dftactgrp(*no);

dcl-pi P1025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds theTable extname('T284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T284 LIMIT 1;

theCharVar = 'Hello from P1025';
dsply theCharVar;
callp localProc();
P1009();
P108();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1025 in the procedure';
end-proc;