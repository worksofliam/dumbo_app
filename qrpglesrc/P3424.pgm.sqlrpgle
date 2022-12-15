**free

ctl-opt dftactgrp(*no);

dcl-pi P3424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P200.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P3424';
dsply theCharVar;
callp localProc();
P1260();
P537();
P200();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3424 in the procedure';
end-proc;