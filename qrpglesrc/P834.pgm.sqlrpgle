**free

ctl-opt dftactgrp(*no);

dcl-pi P834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds theTable extname('T272') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T272 LIMIT 1;

theCharVar = 'Hello from P834';
dsply theCharVar;
callp localProc();
P501();
P142();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P834 in the procedure';
end-proc;