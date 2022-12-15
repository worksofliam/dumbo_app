**free

ctl-opt dftactgrp(*no);

dcl-pi P330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds theTable extname('T1827') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1827 LIMIT 1;

theCharVar = 'Hello from P330';
dsply theCharVar;
callp localProc();
P210();
P263();
P140();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P330 in the procedure';
end-proc;