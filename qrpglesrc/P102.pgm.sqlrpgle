**free

ctl-opt dftactgrp(*no);

dcl-pi P102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P102';
dsply theCharVar;
callp localProc();
P79();
P100();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P102 in the procedure';
end-proc;