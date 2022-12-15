**free

ctl-opt dftactgrp(*no);

dcl-pi P2609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2576.rpgleinc'
/copy 'qrpgleref/P1658.rpgleinc'
/copy 'qrpgleref/P2281.rpgleinc'

dcl-ds theTable extname('T496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T496 LIMIT 1;

theCharVar = 'Hello from P2609';
dsply theCharVar;
P2576();
P1658();
P2281();
return;