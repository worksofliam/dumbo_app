**free

ctl-opt dftactgrp(*no);

dcl-pi P2928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2157.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P2105.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P2928';
dsply theCharVar;
callp localProc();
P2157();
P274();
P2105();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2928 in the procedure';
end-proc;