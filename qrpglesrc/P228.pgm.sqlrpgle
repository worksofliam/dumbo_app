**free

ctl-opt dftactgrp(*no);

dcl-pi P228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds T227 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T227 FROM T227 LIMIT 1;

theCharVar = 'Hello from P228';
dsply theCharVar;
callp localProc();
P173();
P166();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P228 in the procedure';
end-proc;