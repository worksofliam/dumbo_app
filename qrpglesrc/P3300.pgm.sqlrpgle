**free

ctl-opt dftactgrp(*no);

dcl-pi P3300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'

dcl-ds T658 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T658 FROM T658 LIMIT 1;

theCharVar = 'Hello from P3300';
dsply theCharVar;
callp localProc();
P1365();
P1742();
P1397();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3300 in the procedure';
end-proc;