**free

ctl-opt dftactgrp(*no);

dcl-pi P4972;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4647.rpgleinc'
/copy 'qrpgleref/P3002.rpgleinc'
/copy 'qrpgleref/P4680.rpgleinc'

dcl-ds theTable extname('T998') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T998 LIMIT 1;

theCharVar = 'Hello from P4972';
dsply theCharVar;
callp localProc();
P4647();
P3002();
P4680();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4972 in the procedure';
end-proc;