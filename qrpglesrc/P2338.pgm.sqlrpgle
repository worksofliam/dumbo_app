**free

ctl-opt dftactgrp(*no);

dcl-pi P2338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1268.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P2214.rpgleinc'

dcl-ds T1645 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1645 FROM T1645 LIMIT 1;

theCharVar = 'Hello from P2338';
dsply theCharVar;
callp localProc();
P1268();
P638();
P2214();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2338 in the procedure';
end-proc;