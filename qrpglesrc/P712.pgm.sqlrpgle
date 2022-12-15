**free

ctl-opt dftactgrp(*no);

dcl-pi P712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T110') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T110 LIMIT 1;

theCharVar = 'Hello from P712';
dsply theCharVar;
callp localProc();
P370();
P641();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P712 in the procedure';
end-proc;