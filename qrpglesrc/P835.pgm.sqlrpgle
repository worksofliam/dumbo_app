**free

ctl-opt dftactgrp(*no);

dcl-pi P835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T363 LIMIT 1;

theCharVar = 'Hello from P835';
dsply theCharVar;
P781();
P700();
P379();
return;