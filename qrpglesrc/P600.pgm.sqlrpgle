**free

ctl-opt dftactgrp(*no);

dcl-pi P600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds theTable extname('T143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T143 LIMIT 1;

theCharVar = 'Hello from P600';
dsply theCharVar;
callp localProc();
P499();
P414();
P408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P600 in the procedure';
end-proc;