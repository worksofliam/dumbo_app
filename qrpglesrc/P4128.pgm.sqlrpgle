**free

ctl-opt dftactgrp(*no);

dcl-pi P4128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3371.rpgleinc'
/copy 'qrpgleref/P2071.rpgleinc'
/copy 'qrpgleref/P2658.rpgleinc'

dcl-ds T576 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T576 FROM T576 LIMIT 1;

theCharVar = 'Hello from P4128';
dsply theCharVar;
callp localProc();
P3371();
P2071();
P2658();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4128 in the procedure';
end-proc;