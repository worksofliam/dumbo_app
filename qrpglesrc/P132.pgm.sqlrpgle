**free

ctl-opt dftactgrp(*no);

dcl-pi P132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds T64 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T64 FROM T64 LIMIT 1;

theCharVar = 'Hello from P132';
dsply theCharVar;
callp localProc();
P114();
P69();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P132 in the procedure';
end-proc;