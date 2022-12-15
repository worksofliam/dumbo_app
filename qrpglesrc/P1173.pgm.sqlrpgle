**free

ctl-opt dftactgrp(*no);

dcl-pi P1173;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P833.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P1173';
dsply theCharVar;
P833();
P115();
P89();
return;