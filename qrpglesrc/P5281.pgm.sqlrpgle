**free

ctl-opt dftactgrp(*no);

dcl-pi P5281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3528.rpgleinc'
/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P3324.rpgleinc'

dcl-ds theTable extname('T928') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T928 LIMIT 1;

theCharVar = 'Hello from P5281';
dsply theCharVar;
P3528();
P1421();
P3324();
return;