**free

ctl-opt dftactgrp(*no);

dcl-pi P3599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3382.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P1367.rpgleinc'

dcl-ds theTable extname('T661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T661 LIMIT 1;

theCharVar = 'Hello from P3599';
dsply theCharVar;
callp localProc();
P3382();
P412();
P1367();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3599 in the procedure';
end-proc;