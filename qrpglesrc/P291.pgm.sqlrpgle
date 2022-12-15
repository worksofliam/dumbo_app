**free

ctl-opt dftactgrp(*no);

dcl-pi P291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P291';
dsply theCharVar;
callp localProc();
P221();
P97();
P84();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P291 in the procedure';
end-proc;