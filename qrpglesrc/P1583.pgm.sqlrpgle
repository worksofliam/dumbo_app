**free

ctl-opt dftactgrp(*no);

dcl-pi P1583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1324.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'

dcl-ds theTable extname('T577') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T577 LIMIT 1;

theCharVar = 'Hello from P1583';
dsply theCharVar;
callp localProc();
P1324();
P663();
P1164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1583 in the procedure';
end-proc;