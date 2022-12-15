**free

ctl-opt dftactgrp(*no);

dcl-pi P890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T325') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T325 LIMIT 1;

theCharVar = 'Hello from P890';
dsply theCharVar;
callp localProc();
P4();
P274();
P62();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P890 in the procedure';
end-proc;