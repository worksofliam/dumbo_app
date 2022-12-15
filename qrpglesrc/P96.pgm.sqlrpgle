**free

ctl-opt dftactgrp(*no);

dcl-pi P96;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T144 FROM T144 LIMIT 1;

theCharVar = 'Hello from P96';
dsply theCharVar;
callp localProc();
P71();
P11();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P96 in the procedure';
end-proc;