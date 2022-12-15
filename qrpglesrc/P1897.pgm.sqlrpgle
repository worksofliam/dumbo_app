**free

ctl-opt dftactgrp(*no);

dcl-pi P1897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1723.rpgleinc'
/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds T1218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1218 FROM T1218 LIMIT 1;

theCharVar = 'Hello from P1897';
dsply theCharVar;
callp localProc();
P1723();
P1117();
P336();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1897 in the procedure';
end-proc;