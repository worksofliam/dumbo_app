**free

ctl-opt dftactgrp(*no);

dcl-pi P1308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P1248.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'

dcl-ds theTable extname('T779') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T779 LIMIT 1;

theCharVar = 'Hello from P1308';
dsply theCharVar;
P622();
P1248();
P335();
return;