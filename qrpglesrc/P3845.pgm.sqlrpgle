**free

ctl-opt dftactgrp(*no);

dcl-pi P3845;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P2159.rpgleinc'

dcl-ds theTable extname('T582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T582 LIMIT 1;

theCharVar = 'Hello from P3845';
dsply theCharVar;
callp localProc();
P517();
P1751();
P2159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3845 in the procedure';
end-proc;