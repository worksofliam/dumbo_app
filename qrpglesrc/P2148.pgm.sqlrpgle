**free

ctl-opt dftactgrp(*no);

dcl-pi P2148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P1925.rpgleinc'

dcl-ds theTable extname('T656') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T656 LIMIT 1;

theCharVar = 'Hello from P2148';
dsply theCharVar;
callp localProc();
P1553();
P1484();
P1925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2148 in the procedure';
end-proc;