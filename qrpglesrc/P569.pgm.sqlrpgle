**free

ctl-opt dftactgrp(*no);

dcl-pi P569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T1245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1245 LIMIT 1;

theCharVar = 'Hello from P569';
dsply theCharVar;
callp localProc();
P56();
P208();
P419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P569 in the procedure';
end-proc;