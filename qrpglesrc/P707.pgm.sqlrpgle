**free

ctl-opt dftactgrp(*no);

dcl-pi P707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P599.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P707';
dsply theCharVar;
callp localProc();
P599();
P130();
P214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P707 in the procedure';
end-proc;