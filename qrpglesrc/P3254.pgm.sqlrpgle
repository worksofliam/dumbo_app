**free

ctl-opt dftactgrp(*no);

dcl-pi P3254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2650.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'

dcl-ds T608 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T608 FROM T608 LIMIT 1;

theCharVar = 'Hello from P3254';
dsply theCharVar;
callp localProc();
P2650();
P983();
P362();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3254 in the procedure';
end-proc;