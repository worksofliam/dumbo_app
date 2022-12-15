**free

ctl-opt dftactgrp(*no);

dcl-pi P1462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P871.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P837.rpgleinc'

dcl-ds theTable extname('T1145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1145 LIMIT 1;

theCharVar = 'Hello from P1462';
dsply theCharVar;
callp localProc();
P871();
P258();
P837();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1462 in the procedure';
end-proc;