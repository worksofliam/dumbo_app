**free

ctl-opt dftactgrp(*no);

dcl-pi P1210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'

dcl-ds theTable extname('T916') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T916 LIMIT 1;

theCharVar = 'Hello from P1210';
dsply theCharVar;
P249();
P358();
P480();
return;