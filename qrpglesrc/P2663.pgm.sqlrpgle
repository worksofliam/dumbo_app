**free

ctl-opt dftactgrp(*no);

dcl-pi P2663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2418.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P2318.rpgleinc'

dcl-ds T646 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T646 FROM T646 LIMIT 1;

theCharVar = 'Hello from P2663';
dsply theCharVar;
callp localProc();
P2418();
P924();
P2318();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2663 in the procedure';
end-proc;