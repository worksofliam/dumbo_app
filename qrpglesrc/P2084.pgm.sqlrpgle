**free

ctl-opt dftactgrp(*no);

dcl-pi P2084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P1817.rpgleinc'
/copy 'qrpgleref/P2016.rpgleinc'

dcl-ds theTable extname('T1275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1275 LIMIT 1;

theCharVar = 'Hello from P2084';
dsply theCharVar;
callp localProc();
P263();
P1817();
P2016();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2084 in the procedure';
end-proc;