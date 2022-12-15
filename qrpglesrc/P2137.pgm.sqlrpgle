**free

ctl-opt dftactgrp(*no);

dcl-pi P2137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1609.rpgleinc'
/copy 'qrpgleref/P1336.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds T1093 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1093 FROM T1093 LIMIT 1;

theCharVar = 'Hello from P2137';
dsply theCharVar;
callp localProc();
P1609();
P1336();
P224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2137 in the procedure';
end-proc;