**free

ctl-opt dftactgrp(*no);

dcl-pi P3456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1983.rpgleinc'
/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P1837.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P3456';
dsply theCharVar;
callp localProc();
P1983();
P1700();
P1837();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3456 in the procedure';
end-proc;