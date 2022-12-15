**free

ctl-opt dftactgrp(*no);

dcl-pi P1603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'

dcl-ds theTable extname('T453') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T453 LIMIT 1;

theCharVar = 'Hello from P1603';
dsply theCharVar;
callp localProc();
P473();
P1483();
P1558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1603 in the procedure';
end-proc;