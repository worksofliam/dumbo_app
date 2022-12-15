**free

ctl-opt dftactgrp(*no);

dcl-pi P2366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P956.rpgleinc'
/copy 'qrpgleref/P2356.rpgleinc'
/copy 'qrpgleref/P1867.rpgleinc'

dcl-ds theTable extname('T688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T688 LIMIT 1;

theCharVar = 'Hello from P2366';
dsply theCharVar;
callp localProc();
P956();
P2356();
P1867();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2366 in the procedure';
end-proc;