**free

ctl-opt dftactgrp(*no);

dcl-pi P1044;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P596.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds theTable extname('T848') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T848 LIMIT 1;

theCharVar = 'Hello from P1044';
dsply theCharVar;
callp localProc();
P596();
P391();
P246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1044 in the procedure';
end-proc;