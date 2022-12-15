**free

ctl-opt dftactgrp(*no);

dcl-pi P3990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2014.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'
/copy 'qrpgleref/P925.rpgleinc'

dcl-ds theTable extname('T406') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T406 LIMIT 1;

theCharVar = 'Hello from P3990';
dsply theCharVar;
callp localProc();
P2014();
P251();
P925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3990 in the procedure';
end-proc;