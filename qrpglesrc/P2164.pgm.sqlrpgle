**free

ctl-opt dftactgrp(*no);

dcl-pi P2164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1712.rpgleinc'
/copy 'qrpgleref/P1676.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'

dcl-ds T935 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T935 FROM T935 LIMIT 1;

theCharVar = 'Hello from P2164';
dsply theCharVar;
callp localProc();
P1712();
P1676();
P1000();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2164 in the procedure';
end-proc;