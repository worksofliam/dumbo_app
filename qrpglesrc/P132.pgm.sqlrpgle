**free

ctl-opt dftactgrp(*no);

dcl-pi P132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T327 LIMIT 1;

theCharVar = 'Hello from P132';
dsply theCharVar;
callp localProc();
P16();
P100();
P101();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P132 in the procedure';
end-proc;