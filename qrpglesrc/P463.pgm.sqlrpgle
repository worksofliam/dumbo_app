**free

ctl-opt dftactgrp(*no);

dcl-pi P463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P463';
dsply theCharVar;
callp localProc();
P232();
P86();
P124();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P463 in the procedure';
end-proc;