**free

ctl-opt dftactgrp(*no);

dcl-pi P318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T1105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1105 LIMIT 1;

theCharVar = 'Hello from P318';
dsply theCharVar;
callp localProc();
P248();
P301();
P85();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P318 in the procedure';
end-proc;