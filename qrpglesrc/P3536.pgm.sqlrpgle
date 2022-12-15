**free

ctl-opt dftactgrp(*no);

dcl-pi P3536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2945.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P2027.rpgleinc'

dcl-ds T1411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1411 FROM T1411 LIMIT 1;

theCharVar = 'Hello from P3536';
dsply theCharVar;
callp localProc();
P2945();
P2466();
P2027();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3536 in the procedure';
end-proc;