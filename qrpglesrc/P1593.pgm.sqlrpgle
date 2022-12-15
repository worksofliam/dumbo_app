**free

ctl-opt dftactgrp(*no);

dcl-pi P1593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'

dcl-ds T695 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T695 FROM T695 LIMIT 1;

theCharVar = 'Hello from P1593';
dsply theCharVar;
callp localProc();
P115();
P571();
P1179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1593 in the procedure';
end-proc;