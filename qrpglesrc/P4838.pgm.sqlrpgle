**free

ctl-opt dftactgrp(*no);

dcl-pi P4838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1972.rpgleinc'
/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P3415.rpgleinc'

dcl-ds T1466 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1466 FROM T1466 LIMIT 1;

theCharVar = 'Hello from P4838';
dsply theCharVar;
callp localProc();
P1972();
P764();
P3415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4838 in the procedure';
end-proc;