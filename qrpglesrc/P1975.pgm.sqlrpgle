**free

ctl-opt dftactgrp(*no);

dcl-pi P1975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1674.rpgleinc'
/copy 'qrpgleref/P1949.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'

dcl-ds T667 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T667 FROM T667 LIMIT 1;

theCharVar = 'Hello from P1975';
dsply theCharVar;
P1674();
P1949();
P834();
return;