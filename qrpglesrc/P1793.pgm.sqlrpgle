**free

ctl-opt dftactgrp(*no);

dcl-pi P1793;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P920.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T280') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T280 LIMIT 1;

theCharVar = 'Hello from P1793';
dsply theCharVar;
P920();
P711();
P1116();
return;