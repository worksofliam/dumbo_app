**free

ctl-opt dftactgrp(*no);

dcl-pi P523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P523';
dsply theCharVar;
callp localProc();
P104();
P451();
P352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P523 in the procedure';
end-proc;