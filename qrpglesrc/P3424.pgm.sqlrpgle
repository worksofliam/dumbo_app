**free

ctl-opt dftactgrp(*no);

dcl-pi P3424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P2244.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T1357') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1357 LIMIT 1;

theCharVar = 'Hello from P3424';
dsply theCharVar;
callp localProc();
P105();
P2244();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3424 in the procedure';
end-proc;