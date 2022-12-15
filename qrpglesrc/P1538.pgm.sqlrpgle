**free

ctl-opt dftactgrp(*no);

dcl-pi P1538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P1433.rpgleinc'

dcl-ds T374 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T374 FROM T374 LIMIT 1;

theCharVar = 'Hello from P1538';
dsply theCharVar;
P1419();
P773();
P1433();
return;