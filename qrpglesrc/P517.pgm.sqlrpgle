**free

ctl-opt dftactgrp(*no);

dcl-pi P517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P517';
dsply theCharVar;
callp localProc();
P138();
P170();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P517 in the procedure';
end-proc;