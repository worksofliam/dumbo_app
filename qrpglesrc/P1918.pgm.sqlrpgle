**free

ctl-opt dftactgrp(*no);

dcl-pi P1918;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P643.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P1219.rpgleinc'

dcl-ds T629 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T629 FROM T629 LIMIT 1;

theCharVar = 'Hello from P1918';
dsply theCharVar;
callp localProc();
P643();
P34();
P1219();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1918 in the procedure';
end-proc;