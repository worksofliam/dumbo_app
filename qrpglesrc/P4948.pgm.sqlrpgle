**free

ctl-opt dftactgrp(*no);

dcl-pi P4948;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4023.rpgleinc'
/copy 'qrpgleref/P4251.rpgleinc'
/copy 'qrpgleref/P1815.rpgleinc'

dcl-ds theTable extname('T934') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T934 LIMIT 1;

theCharVar = 'Hello from P4948';
dsply theCharVar;
callp localProc();
P4023();
P4251();
P1815();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4948 in the procedure';
end-proc;