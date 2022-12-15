**free

ctl-opt dftactgrp(*no);

dcl-pi P2162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P844.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P2162';
dsply theCharVar;
callp localProc();
P749();
P844();
P462();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2162 in the procedure';
end-proc;