**free

ctl-opt dftactgrp(*no);

dcl-pi P1356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds theTable extname('T1048') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1048 LIMIT 1;

theCharVar = 'Hello from P1356';
dsply theCharVar;
callp localProc();
P71();
P1181();
P516();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1356 in the procedure';
end-proc;