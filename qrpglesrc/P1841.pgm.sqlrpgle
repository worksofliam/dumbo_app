**free

ctl-opt dftactgrp(*no);

dcl-pi P1841;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P1037.rpgleinc'

dcl-ds theTable extname('T396') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T396 LIMIT 1;

theCharVar = 'Hello from P1841';
dsply theCharVar;
callp localProc();
P77();
P523();
P1037();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1841 in the procedure';
end-proc;