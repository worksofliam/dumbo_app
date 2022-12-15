**free

ctl-opt dftactgrp(*no);

dcl-pi P374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds theTable extname('T10') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T10 LIMIT 1;

theCharVar = 'Hello from P374';
dsply theCharVar;
callp localProc();
P71();
P156();
P27();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P374 in the procedure';
end-proc;