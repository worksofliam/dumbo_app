**free

ctl-opt dftactgrp(*no);

dcl-pi P1811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P373.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds theTable extname('T686') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T686 LIMIT 1;

theCharVar = 'Hello from P1811';
dsply theCharVar;
P373();
P40();
P570();
return;