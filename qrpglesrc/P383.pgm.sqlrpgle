**free

ctl-opt dftactgrp(*no);

dcl-pi P383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T652') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T652 LIMIT 1;

theCharVar = 'Hello from P383';
dsply theCharVar;
callp localProc();
P82();
P153();
P371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P383 in the procedure';
end-proc;