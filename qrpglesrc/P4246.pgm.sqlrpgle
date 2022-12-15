**free

ctl-opt dftactgrp(*no);

dcl-pi P4246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2935.rpgleinc'
/copy 'qrpgleref/P2786.rpgleinc'
/copy 'qrpgleref/P1927.rpgleinc'

dcl-ds T922 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T922 FROM T922 LIMIT 1;

theCharVar = 'Hello from P4246';
dsply theCharVar;
callp localProc();
P2935();
P2786();
P1927();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4246 in the procedure';
end-proc;