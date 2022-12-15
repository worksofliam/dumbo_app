**free

ctl-opt dftactgrp(*no);

dcl-pi P4945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2074.rpgleinc'
/copy 'qrpgleref/P4510.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'

dcl-ds T263 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T263 FROM T263 LIMIT 1;

theCharVar = 'Hello from P4945';
dsply theCharVar;
callp localProc();
P2074();
P4510();
P1465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4945 in the procedure';
end-proc;