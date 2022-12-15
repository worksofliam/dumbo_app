**free

ctl-opt dftactgrp(*no);

dcl-pi P1423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'

dcl-ds T754 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T754 FROM T754 LIMIT 1;

theCharVar = 'Hello from P1423';
dsply theCharVar;
callp localProc();
P59();
P513();
P423();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1423 in the procedure';
end-proc;