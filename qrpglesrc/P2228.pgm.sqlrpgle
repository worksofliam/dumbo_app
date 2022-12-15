**free

ctl-opt dftactgrp(*no);

dcl-pi P2228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds T1856 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1856 FROM T1856 LIMIT 1;

theCharVar = 'Hello from P2228';
dsply theCharVar;
callp localProc();
P1221();
P1189();
P349();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2228 in the procedure';
end-proc;