**free

ctl-opt dftactgrp(*no);

dcl-pi P5035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1930.rpgleinc'
/copy 'qrpgleref/P4784.rpgleinc'
/copy 'qrpgleref/P4033.rpgleinc'

dcl-ds theTable extname('T1597') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1597 LIMIT 1;

theCharVar = 'Hello from P5035';
dsply theCharVar;
callp localProc();
P1930();
P4784();
P4033();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5035 in the procedure';
end-proc;