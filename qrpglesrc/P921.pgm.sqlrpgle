**free

ctl-opt dftactgrp(*no);

dcl-pi P921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P921';
dsply theCharVar;
callp localProc();
P199();
P74();
P271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P921 in the procedure';
end-proc;