**free

ctl-opt dftactgrp(*no);

dcl-pi P1896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1456.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P1896';
dsply theCharVar;
callp localProc();
P1456();
P1255();
P915();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1896 in the procedure';
end-proc;