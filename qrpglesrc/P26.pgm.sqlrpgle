**free

ctl-opt dftactgrp(*no);

dcl-pi P26;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T19 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T19 FROM T19 LIMIT 1;

theCharVar = 'Hello from P26';
dsply theCharVar;
callp localProc();
P20();
P5();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P26 in the procedure';
end-proc;