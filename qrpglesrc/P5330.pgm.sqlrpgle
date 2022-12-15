**free

ctl-opt dftactgrp(*no);

dcl-pi P5330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3819.rpgleinc'
/copy 'qrpgleref/P3046.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds T901 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T901 FROM T901 LIMIT 1;

theCharVar = 'Hello from P5330';
dsply theCharVar;
callp localProc();
P3819();
P3046();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5330 in the procedure';
end-proc;