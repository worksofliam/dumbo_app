**free

ctl-opt dftactgrp(*no);

dcl-pi P660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds T298 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T298 FROM T298 LIMIT 1;

theCharVar = 'Hello from P660';
dsply theCharVar;
callp localProc();
P501();
P487();
P94();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P660 in the procedure';
end-proc;