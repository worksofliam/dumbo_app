**free

ctl-opt dftactgrp(*no);

dcl-pi P955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds theTable extname('T1117') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1117 LIMIT 1;

theCharVar = 'Hello from P955';
dsply theCharVar;
callp localProc();
P588();
P393();
P929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P955 in the procedure';
end-proc;