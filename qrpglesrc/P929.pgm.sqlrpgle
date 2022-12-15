**free

ctl-opt dftactgrp(*no);

dcl-pi P929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P272.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T281 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T281 FROM T281 LIMIT 1;

theCharVar = 'Hello from P929';
dsply theCharVar;
P278();
P272();
P645();
return;