**free

ctl-opt dftactgrp(*no);

dcl-pi P3658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3597.rpgleinc'
/copy 'qrpgleref/P3199.rpgleinc'
/copy 'qrpgleref/P743.rpgleinc'

dcl-ds theTable extname('T1517') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1517 LIMIT 1;

theCharVar = 'Hello from P3658';
dsply theCharVar;
callp localProc();
P3597();
P3199();
P743();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3658 in the procedure';
end-proc;