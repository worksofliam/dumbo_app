**free

ctl-opt dftactgrp(*no);

dcl-pi P475;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P475';
dsply theCharVar;
callp localProc();
P54();
P235();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P475 in the procedure';
end-proc;