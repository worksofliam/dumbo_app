**free

ctl-opt dftactgrp(*no);

dcl-pi P19;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P19';
dsply theCharVar;
callp localProc();
P1();
P9();
P3();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P19 in the procedure';
end-proc;