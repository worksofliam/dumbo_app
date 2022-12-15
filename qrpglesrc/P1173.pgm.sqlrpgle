**free

ctl-opt dftactgrp(*no);

dcl-pi P1173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds T1112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1112 FROM T1112 LIMIT 1;

theCharVar = 'Hello from P1173';
dsply theCharVar;
callp localProc();
P255();
P518();
P929();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1173 in the procedure';
end-proc;