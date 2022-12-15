**free

ctl-opt dftactgrp(*no);

dcl-pi P2404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1988.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P1948.rpgleinc'

dcl-ds theTable extname('T926') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T926 LIMIT 1;

theCharVar = 'Hello from P2404';
dsply theCharVar;
callp localProc();
P1988();
P359();
P1948();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2404 in the procedure';
end-proc;