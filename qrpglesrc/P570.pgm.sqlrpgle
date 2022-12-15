**free

ctl-opt dftactgrp(*no);

dcl-pi P570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P570';
dsply theCharVar;
P173();
P472();
P70();
return;