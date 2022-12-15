**free

ctl-opt dftactgrp(*no);

dcl-pi P3846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1483.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P3419.rpgleinc'

dcl-ds theTable extname('T1296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1296 LIMIT 1;

theCharVar = 'Hello from P3846';
dsply theCharVar;
callp localProc();
P1483();
P893();
P3419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3846 in the procedure';
end-proc;