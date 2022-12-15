**free

ctl-opt dftactgrp(*no);

dcl-pi P629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'

dcl-ds T882 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T882 FROM T882 LIMIT 1;

theCharVar = 'Hello from P629';
dsply theCharVar;
callp localProc();
P30();
P265();
P466();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P629 in the procedure';
end-proc;