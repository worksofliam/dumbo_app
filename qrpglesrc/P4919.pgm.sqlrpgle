**free

ctl-opt dftactgrp(*no);

dcl-pi P4919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3227.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P4222.rpgleinc'

dcl-ds T771 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T771 FROM T771 LIMIT 1;

theCharVar = 'Hello from P4919';
dsply theCharVar;
callp localProc();
P3227();
P217();
P4222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4919 in the procedure';
end-proc;