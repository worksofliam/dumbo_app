**free

ctl-opt dftactgrp(*no);

dcl-pi P663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P615.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P663';
dsply theCharVar;
callp localProc();
P352();
P190();
P615();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P663 in the procedure';
end-proc;