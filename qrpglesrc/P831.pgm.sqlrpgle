**free

ctl-opt dftactgrp(*no);

dcl-pi P831;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T734') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T734 LIMIT 1;

theCharVar = 'Hello from P831';
dsply theCharVar;
callp localProc();
P421();
P768();
P352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P831 in the procedure';
end-proc;