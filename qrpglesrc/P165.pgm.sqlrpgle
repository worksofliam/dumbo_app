**free

ctl-opt dftactgrp(*no);

dcl-pi P165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'
/copy 'qrpgleref/P72.rpgleinc'

dcl-ds theTable extname('T220') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T220 LIMIT 1;

theCharVar = 'Hello from P165';
dsply theCharVar;
P13();
P128();
P72();
return;