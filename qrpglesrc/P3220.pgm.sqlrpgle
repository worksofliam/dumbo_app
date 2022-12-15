**free

ctl-opt dftactgrp(*no);

dcl-pi P3220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2621.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'

dcl-ds theTable extname('T1678') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1678 LIMIT 1;

theCharVar = 'Hello from P3220';
dsply theCharVar;
callp localProc();
P2621();
P554();
P1111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3220 in the procedure';
end-proc;