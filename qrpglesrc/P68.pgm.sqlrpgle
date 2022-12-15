**free

ctl-opt dftactgrp(*no);

dcl-pi P68;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds T116 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T116 FROM T116 LIMIT 1;

theCharVar = 'Hello from P68';
dsply theCharVar;
callp localProc();
P39();
P59();
P19();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P68 in the procedure';
end-proc;