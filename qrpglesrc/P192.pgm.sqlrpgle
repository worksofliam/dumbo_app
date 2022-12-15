**free

ctl-opt dftactgrp(*no);

dcl-pi P192;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'

dcl-ds T543 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T543 FROM T543 LIMIT 1;

theCharVar = 'Hello from P192';
dsply theCharVar;
P80();
P41();
P10();
return;