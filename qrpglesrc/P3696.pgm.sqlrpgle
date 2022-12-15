**free

ctl-opt dftactgrp(*no);

dcl-pi P3696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P636.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P3696';
dsply theCharVar;
P636();
P10();
P910();
return;