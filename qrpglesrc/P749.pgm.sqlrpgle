**free

ctl-opt dftactgrp(*no);

dcl-pi P749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P749';
dsply theCharVar;
callp localProc();
P194();
P475();
P380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P749 in the procedure';
end-proc;