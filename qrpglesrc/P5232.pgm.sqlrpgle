**free

ctl-opt dftactgrp(*no);

dcl-pi P5232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4802.rpgleinc'
/copy 'qrpgleref/P1701.rpgleinc'
/copy 'qrpgleref/P3494.rpgleinc'

dcl-ds theTable extname('T339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T339 LIMIT 1;

theCharVar = 'Hello from P5232';
dsply theCharVar;
P4802();
P1701();
P3494();
return;