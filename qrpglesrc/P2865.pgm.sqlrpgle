**free

ctl-opt dftactgrp(*no);

dcl-pi P2865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2353.rpgleinc'
/copy 'qrpgleref/P1096.rpgleinc'
/copy 'qrpgleref/P2554.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P2865';
dsply theCharVar;
callp localProc();
P2353();
P1096();
P2554();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2865 in the procedure';
end-proc;