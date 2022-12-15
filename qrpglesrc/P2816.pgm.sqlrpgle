**free

ctl-opt dftactgrp(*no);

dcl-pi P2816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1989.rpgleinc'
/copy 'qrpgleref/P1964.rpgleinc'
/copy 'qrpgleref/P2658.rpgleinc'

dcl-ds T418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T418 FROM T418 LIMIT 1;

theCharVar = 'Hello from P2816';
dsply theCharVar;
P1989();
P1964();
P2658();
return;