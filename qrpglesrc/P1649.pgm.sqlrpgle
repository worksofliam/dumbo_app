**free

ctl-opt dftactgrp(*no);

dcl-pi P1649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds T466 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T466 FROM T466 LIMIT 1;

theCharVar = 'Hello from P1649';
dsply theCharVar;
callp localProc();
P302();
P424();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1649 in the procedure';
end-proc;