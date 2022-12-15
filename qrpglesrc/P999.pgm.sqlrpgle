**free

ctl-opt dftactgrp(*no);

dcl-pi P999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P999';
dsply theCharVar;
P473();
P195();
P96();
return;