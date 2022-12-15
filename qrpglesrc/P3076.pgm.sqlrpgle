**free

ctl-opt dftactgrp(*no);

dcl-pi P3076;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P2543.rpgleinc'
/copy 'qrpgleref/P2923.rpgleinc'

dcl-ds theTable extname('T937') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T937 LIMIT 1;

theCharVar = 'Hello from P3076';
dsply theCharVar;
callp localProc();
P1231();
P2543();
P2923();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3076 in the procedure';
end-proc;