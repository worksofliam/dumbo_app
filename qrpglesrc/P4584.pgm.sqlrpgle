**free

ctl-opt dftactgrp(*no);

dcl-pi P4584;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1120.rpgleinc'
/copy 'qrpgleref/P4333.rpgleinc'
/copy 'qrpgleref/P4358.rpgleinc'

dcl-ds theTable extname('T707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T707 LIMIT 1;

theCharVar = 'Hello from P4584';
dsply theCharVar;
P1120();
P4333();
P4358();
return;