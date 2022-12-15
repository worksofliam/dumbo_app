**free

ctl-opt dftactgrp(*no);

dcl-pi P5383;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P4991.rpgleinc'
/copy 'qrpgleref/P3071.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P5383';
dsply theCharVar;
callp localProc();
P47();
P4991();
P3071();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5383 in the procedure';
end-proc;