**free

ctl-opt dftactgrp(*no);

dcl-pi P3283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'

dcl-ds T1043 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1043 FROM T1043 LIMIT 1;

theCharVar = 'Hello from P3283';
dsply theCharVar;
callp localProc();
P162();
P148();
P1050();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3283 in the procedure';
end-proc;