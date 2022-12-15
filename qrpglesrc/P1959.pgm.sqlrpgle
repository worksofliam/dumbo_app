**free

ctl-opt dftactgrp(*no);

dcl-pi P1959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P1959';
dsply theCharVar;
P181();
P622();
P325();
return;