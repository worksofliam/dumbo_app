**free

ctl-opt dftactgrp(*no);

dcl-pi P411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T600') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T600 LIMIT 1;

theCharVar = 'Hello from P411';
dsply theCharVar;
callp localProc();
P4();
P331();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P411 in the procedure';
end-proc;