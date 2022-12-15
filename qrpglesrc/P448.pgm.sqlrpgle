**free

ctl-opt dftactgrp(*no);

dcl-pi P448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P448';
dsply theCharVar;
callp localProc();
P447();
P257();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P448 in the procedure';
end-proc;