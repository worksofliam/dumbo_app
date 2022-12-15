**free

ctl-opt dftactgrp(*no);

dcl-pi P1889;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P323.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds T502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T502 FROM T502 LIMIT 1;

theCharVar = 'Hello from P1889';
dsply theCharVar;
callp localProc();
P323();
P1041();
P591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1889 in the procedure';
end-proc;