**free

ctl-opt dftactgrp(*no);

dcl-pi P4694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1550.rpgleinc'
/copy 'qrpgleref/P3812.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P4694';
dsply theCharVar;
P1550();
P3812();
P780();
return;