**free

ctl-opt dftactgrp(*no);

dcl-pi P4199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4183.rpgleinc'
/copy 'qrpgleref/P3925.rpgleinc'
/copy 'qrpgleref/P3073.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P4199';
dsply theCharVar;
callp localProc();
P4183();
P3925();
P3073();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4199 in the procedure';
end-proc;