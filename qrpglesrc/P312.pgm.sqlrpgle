**free

ctl-opt dftactgrp(*no);

dcl-pi P312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P312';
dsply theCharVar;
callp localProc();
P266();
P304();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P312 in the procedure';
end-proc;