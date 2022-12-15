**free

ctl-opt dftactgrp(*no);

dcl-pi P3522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2744.rpgleinc'
/copy 'qrpgleref/P3279.rpgleinc'
/copy 'qrpgleref/P2229.rpgleinc'

dcl-ds T1505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1505 FROM T1505 LIMIT 1;

theCharVar = 'Hello from P3522';
dsply theCharVar;
callp localProc();
P2744();
P3279();
P2229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3522 in the procedure';
end-proc;