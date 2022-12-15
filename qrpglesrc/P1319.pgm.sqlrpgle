**free

ctl-opt dftactgrp(*no);

dcl-pi P1319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P891.rpgleinc'

dcl-ds T1031 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1031 FROM T1031 LIMIT 1;

theCharVar = 'Hello from P1319';
dsply theCharVar;
callp localProc();
P383();
P48();
P891();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1319 in the procedure';
end-proc;