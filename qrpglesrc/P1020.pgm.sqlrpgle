**free

ctl-opt dftactgrp(*no);

dcl-pi P1020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P995.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'

dcl-ds T1067 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1067 FROM T1067 LIMIT 1;

theCharVar = 'Hello from P1020';
dsply theCharVar;
callp localProc();
P995();
P589();
P663();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1020 in the procedure';
end-proc;