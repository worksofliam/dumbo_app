**free

ctl-opt dftactgrp(*no);

dcl-pi P995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P995';
dsply theCharVar;
callp localProc();
P161();
P963();
P573();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P995 in the procedure';
end-proc;