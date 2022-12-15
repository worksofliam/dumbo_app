**free

ctl-opt dftactgrp(*no);

dcl-pi P4049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P469.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P4049';
dsply theCharVar;
callp localProc();
P469();
P49();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4049 in the procedure';
end-proc;