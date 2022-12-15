**free

ctl-opt dftactgrp(*no);

dcl-pi P2492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P2088.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T292 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T292 FROM T292 LIMIT 1;

theCharVar = 'Hello from P2492';
dsply theCharVar;
P2132();
P2088();
P645();
return;