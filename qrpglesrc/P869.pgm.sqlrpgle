**free

ctl-opt dftactgrp(*no);

dcl-pi P869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T4') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T4 LIMIT 1;

theCharVar = 'Hello from P869';
dsply theCharVar;
callp localProc();
P610();
P295();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P869 in the procedure';
end-proc;