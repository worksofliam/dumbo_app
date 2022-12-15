**free

ctl-opt dftactgrp(*no);

dcl-pi P1047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P1047';
dsply theCharVar;
callp localProc();
P518();
P159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1047 in the procedure';
end-proc;