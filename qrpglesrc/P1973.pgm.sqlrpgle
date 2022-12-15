**free

ctl-opt dftactgrp(*no);

dcl-pi P1973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P1260.rpgleinc'

dcl-ds theTable extname('T1103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1103 LIMIT 1;

theCharVar = 'Hello from P1973';
dsply theCharVar;
callp localProc();
P738();
P139();
P1260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1973 in the procedure';
end-proc;