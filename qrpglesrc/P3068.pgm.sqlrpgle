**free

ctl-opt dftactgrp(*no);

dcl-pi P3068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2239.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'

dcl-ds theTable extname('T174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T174 LIMIT 1;

theCharVar = 'Hello from P3068';
dsply theCharVar;
callp localProc();
P2239();
P162();
P501();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3068 in the procedure';
end-proc;