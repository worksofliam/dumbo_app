**free

ctl-opt dftactgrp(*no);

dcl-pi P5560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5106.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P2123.rpgleinc'

dcl-ds theTable extname('T1841') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1841 LIMIT 1;

theCharVar = 'Hello from P5560';
dsply theCharVar;
callp localProc();
P5106();
P2029();
P2123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5560 in the procedure';
end-proc;