**free

ctl-opt dftactgrp(*no);

dcl-pi P1946;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P717.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P478.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P1946';
dsply theCharVar;
callp localProc();
P717();
P240();
P478();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1946 in the procedure';
end-proc;