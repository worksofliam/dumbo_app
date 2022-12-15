**free

ctl-opt dftactgrp(*no);

dcl-pi P4105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2656.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'
/copy 'qrpgleref/P534.rpgleinc'

dcl-ds theTable extname('T1544') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1544 LIMIT 1;

theCharVar = 'Hello from P4105';
dsply theCharVar;
callp localProc();
P2656();
P971();
P534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4105 in the procedure';
end-proc;