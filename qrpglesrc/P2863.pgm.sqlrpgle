**free

ctl-opt dftactgrp(*no);

dcl-pi P2863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1071.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P1966.rpgleinc'

dcl-ds T1265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1265 FROM T1265 LIMIT 1;

theCharVar = 'Hello from P2863';
dsply theCharVar;
callp localProc();
P1071();
P1901();
P1966();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2863 in the procedure';
end-proc;