**free

ctl-opt dftactgrp(*no);

dcl-pi P967;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'

dcl-ds theTable extname('T209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T209 LIMIT 1;

theCharVar = 'Hello from P967';
dsply theCharVar;
callp localProc();
P809();
P742();
P628();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P967 in the procedure';
end-proc;