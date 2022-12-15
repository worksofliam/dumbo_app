**free

ctl-opt dftactgrp(*no);

dcl-pi P610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P448.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P610';
dsply theCharVar;
callp localProc();
P448();
P598();
P540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P610 in the procedure';
end-proc;