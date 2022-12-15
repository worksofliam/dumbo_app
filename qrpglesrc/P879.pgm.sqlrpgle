**free

ctl-opt dftactgrp(*no);

dcl-pi P879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'

dcl-ds T513 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T513 FROM T513 LIMIT 1;

theCharVar = 'Hello from P879';
dsply theCharVar;
callp localProc();
P324();
P564();
P749();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P879 in the procedure';
end-proc;