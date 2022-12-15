**free

ctl-opt dftactgrp(*no);

dcl-pi P1606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1323.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds T1224 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1224 FROM T1224 LIMIT 1;

theCharVar = 'Hello from P1606';
dsply theCharVar;
callp localProc();
P1323();
P1159();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1606 in the procedure';
end-proc;