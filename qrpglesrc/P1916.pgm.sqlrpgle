**free

ctl-opt dftactgrp(*no);

dcl-pi P1916;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P692.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'
/copy 'qrpgleref/P820.rpgleinc'

dcl-ds theTable extname('T638') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T638 LIMIT 1;

theCharVar = 'Hello from P1916';
dsply theCharVar;
P692();
P593();
P820();
return;