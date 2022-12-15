**free

ctl-opt dftactgrp(*no);

dcl-pi P282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P282';
dsply theCharVar;
callp localProc();
P189();
P24();
P234();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P282 in the procedure';
end-proc;