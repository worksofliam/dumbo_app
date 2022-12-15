**free

ctl-opt dftactgrp(*no);

dcl-pi P2978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1328.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'

dcl-ds T1541 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1541 FROM T1541 LIMIT 1;

theCharVar = 'Hello from P2978';
dsply theCharVar;
callp localProc();
P1328();
P2000();
P1118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2978 in the procedure';
end-proc;