**free

ctl-opt dftactgrp(*no);

dcl-pi P895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T49') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T49 LIMIT 1;

theCharVar = 'Hello from P895';
dsply theCharVar;
callp localProc();
P390();
P584();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P895 in the procedure';
end-proc;