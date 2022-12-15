**free

ctl-opt dftactgrp(*no);

dcl-pi P686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P686';
dsply theCharVar;
callp localProc();
P9();
P553();
P90();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P686 in the procedure';
end-proc;