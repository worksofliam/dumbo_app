**free

ctl-opt dftactgrp(*no);

dcl-pi P2111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P2111';
dsply theCharVar;
callp localProc();
P695();
P638();
P1833();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2111 in the procedure';
end-proc;