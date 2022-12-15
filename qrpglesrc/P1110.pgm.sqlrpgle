**free

ctl-opt dftactgrp(*no);

dcl-pi P1110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'

dcl-ds T762 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T762 FROM T762 LIMIT 1;

theCharVar = 'Hello from P1110';
dsply theCharVar;
P280();
P75();
P964();
return;