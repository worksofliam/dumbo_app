**free

ctl-opt dftactgrp(*no);

dcl-pi P3291;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P1541.rpgleinc'

dcl-ds theTable extname('T558') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T558 LIMIT 1;

theCharVar = 'Hello from P3291';
dsply theCharVar;
callp localProc();
P472();
P2029();
P1541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3291 in the procedure';
end-proc;