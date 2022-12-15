**free

ctl-opt dftactgrp(*no);

dcl-pi P3085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1523.rpgleinc'
/copy 'qrpgleref/P2861.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P3085';
dsply theCharVar;
callp localProc();
P1523();
P2861();
P863();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3085 in the procedure';
end-proc;