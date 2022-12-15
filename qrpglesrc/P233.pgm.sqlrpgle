**free

ctl-opt dftactgrp(*no);

dcl-pi P233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds T307 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T307 FROM T307 LIMIT 1;

theCharVar = 'Hello from P233';
dsply theCharVar;
callp localProc();
P218();
P72();
P173();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P233 in the procedure';
end-proc;