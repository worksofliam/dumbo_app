**free

ctl-opt dftactgrp(*no);

dcl-pi P2884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2123.rpgleinc'
/copy 'qrpgleref/P2469.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P2884';
dsply theCharVar;
callp localProc();
P2123();
P2469();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2884 in the procedure';
end-proc;