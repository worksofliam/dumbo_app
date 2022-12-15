**free

ctl-opt dftactgrp(*no);

dcl-pi P1428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P747.rpgleinc'
/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T1015') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1015 LIMIT 1;

theCharVar = 'Hello from P1428';
dsply theCharVar;
callp localProc();
P747();
P153();
P601();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1428 in the procedure';
end-proc;