**free

ctl-opt dftactgrp(*no);

dcl-pi P356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T395 LIMIT 1;

theCharVar = 'Hello from P356';
dsply theCharVar;
callp localProc();
P12();
P100();
P44();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P356 in the procedure';
end-proc;