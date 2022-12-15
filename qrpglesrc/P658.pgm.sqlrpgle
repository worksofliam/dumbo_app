**free

ctl-opt dftactgrp(*no);

dcl-pi P658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T266 LIMIT 1;

theCharVar = 'Hello from P658';
dsply theCharVar;
callp localProc();
P140();
P506();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P658 in the procedure';
end-proc;