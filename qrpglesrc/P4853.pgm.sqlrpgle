**free

ctl-opt dftactgrp(*no);

dcl-pi P4853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3984.rpgleinc'
/copy 'qrpgleref/P3729.rpgleinc'
/copy 'qrpgleref/P649.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P4853';
dsply theCharVar;
callp localProc();
P3984();
P3729();
P649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4853 in the procedure';
end-proc;