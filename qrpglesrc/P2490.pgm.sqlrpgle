**free

ctl-opt dftactgrp(*no);

dcl-pi P2490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'

dcl-ds theTable extname('T304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T304 LIMIT 1;

theCharVar = 'Hello from P2490';
dsply theCharVar;
callp localProc();
P670();
P557();
P2038();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2490 in the procedure';
end-proc;