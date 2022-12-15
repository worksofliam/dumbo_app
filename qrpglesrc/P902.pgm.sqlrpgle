**free

ctl-opt dftactgrp(*no);

dcl-pi P902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P555.rpgleinc'
/copy 'qrpgleref/P883.rpgleinc'

dcl-ds theTable extname('T1243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1243 LIMIT 1;

theCharVar = 'Hello from P902';
dsply theCharVar;
callp localProc();
P19();
P555();
P883();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P902 in the procedure';
end-proc;