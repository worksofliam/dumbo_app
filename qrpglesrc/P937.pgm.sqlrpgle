**free

ctl-opt dftactgrp(*no);

dcl-pi P937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P834.rpgleinc'
/copy 'qrpgleref/P861.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P937';
dsply theCharVar;
P259();
P834();
P861();
return;