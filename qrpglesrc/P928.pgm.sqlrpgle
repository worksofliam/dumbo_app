**free

ctl-opt dftactgrp(*no);

dcl-pi P928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P928';
dsply theCharVar;
callp localProc();
P164();
P161();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P928 in the procedure';
end-proc;