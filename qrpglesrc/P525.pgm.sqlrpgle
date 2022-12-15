**free

ctl-opt dftactgrp(*no);

dcl-pi P525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T249 LIMIT 1;

theCharVar = 'Hello from P525';
dsply theCharVar;
callp localProc();
P278();
P174();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P525 in the procedure';
end-proc;