**free

ctl-opt dftactgrp(*no);

dcl-pi P929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P929';
dsply theCharVar;
callp localProc();
P215();
P422();
P133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P929 in the procedure';
end-proc;