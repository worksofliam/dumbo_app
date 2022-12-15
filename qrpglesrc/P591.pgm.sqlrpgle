**free

ctl-opt dftactgrp(*no);

dcl-pi P591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T139') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T139 LIMIT 1;

theCharVar = 'Hello from P591';
dsply theCharVar;
callp localProc();
P168();
P172();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P591 in the procedure';
end-proc;