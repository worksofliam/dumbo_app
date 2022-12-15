**free

ctl-opt dftactgrp(*no);

dcl-pi P4792;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2082.rpgleinc'
/copy 'qrpgleref/P4749.rpgleinc'
/copy 'qrpgleref/P3468.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P4792';
dsply theCharVar;
callp localProc();
P2082();
P4749();
P3468();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4792 in the procedure';
end-proc;