**free

ctl-opt dftactgrp(*no);

dcl-pi P1386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T364 LIMIT 1;

theCharVar = 'Hello from P1386';
dsply theCharVar;
P466();
P1277();
P26();
return;