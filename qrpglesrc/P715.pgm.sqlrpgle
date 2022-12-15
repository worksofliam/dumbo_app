**free

ctl-opt dftactgrp(*no);

dcl-pi P715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P690.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P715';
dsply theCharVar;
callp localProc();
P79();
P690();
P319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P715 in the procedure';
end-proc;