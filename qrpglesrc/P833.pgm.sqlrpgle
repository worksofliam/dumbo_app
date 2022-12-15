**free

ctl-opt dftactgrp(*no);

dcl-pi P833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'

dcl-ds theTable extname('T770') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T770 LIMIT 1;

theCharVar = 'Hello from P833';
dsply theCharVar;
callp localProc();
P385();
P750();
P502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P833 in the procedure';
end-proc;