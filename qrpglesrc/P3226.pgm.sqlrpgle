**free

ctl-opt dftactgrp(*no);

dcl-pi P3226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2152.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P3226';
dsply theCharVar;
callp localProc();
P2152();
P656();
P559();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3226 in the procedure';
end-proc;