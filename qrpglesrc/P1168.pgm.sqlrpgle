**free

ctl-opt dftactgrp(*no);

dcl-pi P1168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds theTable extname('T662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T662 LIMIT 1;

theCharVar = 'Hello from P1168';
dsply theCharVar;
callp localProc();
P367();
P1065();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1168 in the procedure';
end-proc;