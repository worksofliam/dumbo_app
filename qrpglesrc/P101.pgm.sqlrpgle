**free

ctl-opt dftactgrp(*no);

dcl-pi P101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T188 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T188 FROM T188 LIMIT 1;

theCharVar = 'Hello from P101';
dsply theCharVar;
callp localProc();
P12();
P20();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P101 in the procedure';
end-proc;