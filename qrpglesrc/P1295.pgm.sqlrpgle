**free

ctl-opt dftactgrp(*no);

dcl-pi P1295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P475.rpgleinc'

dcl-ds theTable extname('T545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T545 LIMIT 1;

theCharVar = 'Hello from P1295';
dsply theCharVar;
callp localProc();
P1066();
P361();
P475();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1295 in the procedure';
end-proc;