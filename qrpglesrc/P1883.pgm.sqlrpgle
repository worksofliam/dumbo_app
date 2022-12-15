**free

ctl-opt dftactgrp(*no);

dcl-pi P1883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'

dcl-ds theTable extname('T1248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1248 LIMIT 1;

theCharVar = 'Hello from P1883';
dsply theCharVar;
callp localProc();
P268();
P902();
P1129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1883 in the procedure';
end-proc;