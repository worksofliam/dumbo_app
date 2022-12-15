**free

ctl-opt dftactgrp(*no);

dcl-pi P3619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1995.rpgleinc'
/copy 'qrpgleref/P3266.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'

dcl-ds theTable extname('T1862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1862 LIMIT 1;

theCharVar = 'Hello from P3619';
dsply theCharVar;
callp localProc();
P1995();
P3266();
P915();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3619 in the procedure';
end-proc;