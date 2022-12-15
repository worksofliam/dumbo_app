**free

ctl-opt dftactgrp(*no);

dcl-pi P1875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'

dcl-ds T400 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T400 FROM T400 LIMIT 1;

theCharVar = 'Hello from P1875';
dsply theCharVar;
callp localProc();
P394();
P1139();
P1865();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1875 in the procedure';
end-proc;