**free

ctl-opt dftactgrp(*no);

dcl-pi P911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds theTable extname('T817') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T817 LIMIT 1;

theCharVar = 'Hello from P911';
dsply theCharVar;
callp localProc();
P446();
P73();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P911 in the procedure';
end-proc;