**free

ctl-opt dftactgrp(*no);

dcl-pi P3683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2078.rpgleinc'
/copy 'qrpgleref/P1682.rpgleinc'
/copy 'qrpgleref/P3217.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P3683';
dsply theCharVar;
callp localProc();
P2078();
P1682();
P3217();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3683 in the procedure';
end-proc;