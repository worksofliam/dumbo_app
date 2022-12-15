**free

ctl-opt dftactgrp(*no);

dcl-pi P2045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1978.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T597') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T597 LIMIT 1;

theCharVar = 'Hello from P2045';
dsply theCharVar;
callp localProc();
P1978();
P749();
P315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2045 in the procedure';
end-proc;