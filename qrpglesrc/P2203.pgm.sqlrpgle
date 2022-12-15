**free

ctl-opt dftactgrp(*no);

dcl-pi P2203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1689.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P1202.rpgleinc'

dcl-ds T566 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T566 FROM T566 LIMIT 1;

theCharVar = 'Hello from P2203';
dsply theCharVar;
callp localProc();
P1689();
P1286();
P1202();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2203 in the procedure';
end-proc;