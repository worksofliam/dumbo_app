**free

ctl-opt dftactgrp(*no);

dcl-pi P2852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P2140.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'

dcl-ds theTable extname('T286') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T286 LIMIT 1;

theCharVar = 'Hello from P2852';
dsply theCharVar;
callp localProc();
P661();
P2140();
P1483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2852 in the procedure';
end-proc;