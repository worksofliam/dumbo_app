**free

ctl-opt dftactgrp(*no);

dcl-pi P508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P508';
dsply theCharVar;
callp localProc();
P202();
P493();
P439();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P508 in the procedure';
end-proc;