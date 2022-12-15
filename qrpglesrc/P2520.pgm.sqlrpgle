**free

ctl-opt dftactgrp(*no);

dcl-pi P2520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T657') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T657 LIMIT 1;

theCharVar = 'Hello from P2520';
dsply theCharVar;
callp localProc();
P28();
P790();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2520 in the procedure';
end-proc;