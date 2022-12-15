**free

ctl-opt dftactgrp(*no);

dcl-pi P603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'

dcl-ds theTable extname('T159') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T159 LIMIT 1;

theCharVar = 'Hello from P603';
dsply theCharVar;
callp localProc();
P382();
P449();
P469();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P603 in the procedure';
end-proc;