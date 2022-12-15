**free

ctl-opt dftactgrp(*no);

dcl-pi P2251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P1431.rpgleinc'

dcl-ds T914 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T914 FROM T914 LIMIT 1;

theCharVar = 'Hello from P2251';
dsply theCharVar;
callp localProc();
P129();
P1641();
P1431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2251 in the procedure';
end-proc;