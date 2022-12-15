**free

ctl-opt dftactgrp(*no);

dcl-pi P783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P783';
dsply theCharVar;
callp localProc();
P721();
P157();
P347();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P783 in the procedure';
end-proc;