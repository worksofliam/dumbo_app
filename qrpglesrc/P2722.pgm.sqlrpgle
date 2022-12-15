**free

ctl-opt dftactgrp(*no);

dcl-pi P2722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P2516.rpgleinc'
/copy 'qrpgleref/P1584.rpgleinc'

dcl-ds theTable extname('T634') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T634 LIMIT 1;

theCharVar = 'Hello from P2722';
dsply theCharVar;
callp localProc();
P43();
P2516();
P1584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2722 in the procedure';
end-proc;