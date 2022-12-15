**free

ctl-opt dftactgrp(*no);

dcl-pi P1762;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P1762';
dsply theCharVar;
P781();
P502();
P221();
return;