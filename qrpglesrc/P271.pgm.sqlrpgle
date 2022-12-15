**free

ctl-opt dftactgrp(*no);

dcl-pi P271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P271';
dsply theCharVar;
callp localProc();
P238();
P49();
P157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P271 in the procedure';
end-proc;