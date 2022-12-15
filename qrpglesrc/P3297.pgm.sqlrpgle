**free

ctl-opt dftactgrp(*no);

dcl-pi P3297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P3297';
dsply theCharVar;
callp localProc();
P154();
P764();
P1116();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3297 in the procedure';
end-proc;