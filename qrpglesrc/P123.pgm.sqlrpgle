**free

ctl-opt dftactgrp(*no);

dcl-pi P123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T726 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T726 FROM T726 LIMIT 1;

theCharVar = 'Hello from P123';
dsply theCharVar;
callp localProc();
P111();
P22();
P10();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P123 in the procedure';
end-proc;