**free

ctl-opt dftactgrp(*no);

dcl-pi P276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds theTable extname('T1337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1337 LIMIT 1;

theCharVar = 'Hello from P276';
dsply theCharVar;
callp localProc();
P47();
P153();
P141();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P276 in the procedure';
end-proc;