**free

ctl-opt dftactgrp(*no);

dcl-pi P499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P499';
dsply theCharVar;
callp localProc();
P200();
P147();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P499 in the procedure';
end-proc;