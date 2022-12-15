**free

ctl-opt dftactgrp(*no);

dcl-pi P143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T94') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T94 LIMIT 1;

theCharVar = 'Hello from P143';
dsply theCharVar;
callp localProc();
P33();
P91();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P143 in the procedure';
end-proc;