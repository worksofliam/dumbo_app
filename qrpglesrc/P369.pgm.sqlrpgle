**free

ctl-opt dftactgrp(*no);

dcl-pi P369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P369';
dsply theCharVar;
callp localProc();
P186();
P269();
P140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P369 in the procedure';
end-proc;