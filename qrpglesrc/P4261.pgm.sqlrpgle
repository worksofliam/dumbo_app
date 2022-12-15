**free

ctl-opt dftactgrp(*no);

dcl-pi P4261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3761.rpgleinc'
/copy 'qrpgleref/P3116.rpgleinc'
/copy 'qrpgleref/P1713.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P4261';
dsply theCharVar;
callp localProc();
P3761();
P3116();
P1713();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4261 in the procedure';
end-proc;