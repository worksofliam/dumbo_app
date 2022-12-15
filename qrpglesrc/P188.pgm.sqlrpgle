**free

ctl-opt dftactgrp(*no);

dcl-pi P188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P188';
dsply theCharVar;
callp localProc();
P181();
P112();
P62();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P188 in the procedure';
end-proc;