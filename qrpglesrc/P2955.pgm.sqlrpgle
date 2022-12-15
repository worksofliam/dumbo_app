**free

ctl-opt dftactgrp(*no);

dcl-pi P2955;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P2921.rpgleinc'

dcl-ds T879 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T879 FROM T879 LIMIT 1;

theCharVar = 'Hello from P2955';
dsply theCharVar;
callp localProc();
P1162();
P304();
P2921();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2955 in the procedure';
end-proc;