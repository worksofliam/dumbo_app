**free

ctl-opt dftactgrp(*no);

dcl-pi P5038;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P888.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P5038';
dsply theCharVar;
P888();
P368();
P16();
return;