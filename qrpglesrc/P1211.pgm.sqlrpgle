**free

ctl-opt dftactgrp(*no);

dcl-pi P1211;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds theTable extname('T1379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1379 LIMIT 1;

theCharVar = 'Hello from P1211';
dsply theCharVar;
callp localProc();
P494();
P582();
P832();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1211 in the procedure';
end-proc;