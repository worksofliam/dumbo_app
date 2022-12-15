**free

ctl-opt dftactgrp(*no);

dcl-pi P848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'

dcl-ds T1238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1238 FROM T1238 LIMIT 1;

theCharVar = 'Hello from P848';
dsply theCharVar;
callp localProc();
P50();
P802();
P391();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P848 in the procedure';
end-proc;