**free

ctl-opt dftactgrp(*no);

dcl-pi P3104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1661.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'
/copy 'qrpgleref/P2116.rpgleinc'

dcl-ds theTable extname('T132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T132 LIMIT 1;

theCharVar = 'Hello from P3104';
dsply theCharVar;
P1661();
P546();
P2116();
return;