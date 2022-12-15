**free

ctl-opt dftactgrp(*no);

dcl-pi P58;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T333 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T333 FROM T333 LIMIT 1;

theCharVar = 'Hello from P58';
dsply theCharVar;
callp localProc();
P55();
P15();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P58 in the procedure';
end-proc;