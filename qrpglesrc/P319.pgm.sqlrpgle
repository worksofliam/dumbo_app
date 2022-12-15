**free

ctl-opt dftactgrp(*no);

dcl-pi P319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds T53 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T53 FROM T53 LIMIT 1;

theCharVar = 'Hello from P319';
dsply theCharVar;
callp localProc();
P162();
P68();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P319 in the procedure';
end-proc;