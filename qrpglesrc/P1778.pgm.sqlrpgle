**free

ctl-opt dftactgrp(*no);

dcl-pi P1778;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P1568.rpgleinc'

dcl-ds theTable extname('T251') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T251 LIMIT 1;

theCharVar = 'Hello from P1778';
dsply theCharVar;
P1700();
P414();
P1568();
return;