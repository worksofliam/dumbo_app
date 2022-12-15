**free

ctl-opt dftactgrp(*no);

dcl-pi P3366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P1022.rpgleinc'

dcl-ds theTable extname('T785') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T785 LIMIT 1;

theCharVar = 'Hello from P3366';
dsply theCharVar;
callp localProc();
P915();
P1401();
P1022();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3366 in the procedure';
end-proc;