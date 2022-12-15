**free

ctl-opt dftactgrp(*no);

dcl-pi P2099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1778.rpgleinc'
/copy 'qrpgleref/P720.rpgleinc'
/copy 'qrpgleref/P1306.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P2099';
dsply theCharVar;
P1778();
P720();
P1306();
return;