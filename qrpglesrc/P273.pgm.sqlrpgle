**free

ctl-opt dftactgrp(*no);

dcl-pi P273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P273';
dsply theCharVar;
callp localProc();
P8();
P159();
P56();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P273 in the procedure';
end-proc;