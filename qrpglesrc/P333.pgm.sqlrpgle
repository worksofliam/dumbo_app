**free

ctl-opt dftactgrp(*no);

dcl-pi P333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P242.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T1868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1868 LIMIT 1;

theCharVar = 'Hello from P333';
dsply theCharVar;
callp localProc();
P242();
P295();
P235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P333 in the procedure';
end-proc;