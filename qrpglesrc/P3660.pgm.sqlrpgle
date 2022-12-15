**free

ctl-opt dftactgrp(*no);

dcl-pi P3660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P1955.rpgleinc'

dcl-ds T771 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T771 FROM T771 LIMIT 1;

theCharVar = 'Hello from P3660';
dsply theCharVar;
P376();
P1352();
P1955();
return;