**free

ctl-opt dftactgrp(*no);

dcl-pi P1876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1160.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds T55 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T55 FROM T55 LIMIT 1;

theCharVar = 'Hello from P1876';
dsply theCharVar;
callp localProc();
P1160();
P85();
P1448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1876 in the procedure';
end-proc;