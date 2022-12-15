**free

ctl-opt dftactgrp(*no);

dcl-pi P796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P633.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds theTable extname('T1502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1502 LIMIT 1;

theCharVar = 'Hello from P796';
dsply theCharVar;
callp localProc();
P291();
P633();
P301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P796 in the procedure';
end-proc;