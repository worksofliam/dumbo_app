**free

ctl-opt dftactgrp(*no);

dcl-pi P2300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P735.rpgleinc'
/copy 'qrpgleref/P2134.rpgleinc'

dcl-ds theTable extname('T1288') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1288 LIMIT 1;

theCharVar = 'Hello from P2300';
dsply theCharVar;
callp localProc();
P1365();
P735();
P2134();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2300 in the procedure';
end-proc;