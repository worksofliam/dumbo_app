**free

ctl-opt dftactgrp(*no);

dcl-pi P987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P792.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T1035') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1035 LIMIT 1;

theCharVar = 'Hello from P987';
dsply theCharVar;
callp localProc();
P792();
P397();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P987 in the procedure';
end-proc;