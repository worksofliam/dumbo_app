**free

ctl-opt dftactgrp(*no);

dcl-pi P815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T397') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T397 LIMIT 1;

theCharVar = 'Hello from P815';
dsply theCharVar;
callp localProc();
P163();
P624();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P815 in the procedure';
end-proc;