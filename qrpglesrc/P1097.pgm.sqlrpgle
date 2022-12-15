**free

ctl-opt dftactgrp(*no);

dcl-pi P1097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T760 LIMIT 1;

theCharVar = 'Hello from P1097';
dsply theCharVar;
callp localProc();
P704();
P785();
P79();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1097 in the procedure';
end-proc;