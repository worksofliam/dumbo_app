**free

ctl-opt dftactgrp(*no);

dcl-pi P4849;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P2308.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds T855 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T855 FROM T855 LIMIT 1;

theCharVar = 'Hello from P4849';
dsply theCharVar;
callp localProc();
P1423();
P2308();
P616();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4849 in the procedure';
end-proc;