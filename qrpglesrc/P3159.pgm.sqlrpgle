**free

ctl-opt dftactgrp(*no);

dcl-pi P3159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds theTable extname('T723') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T723 LIMIT 1;

theCharVar = 'Hello from P3159';
dsply theCharVar;
P319();
P23();
P1733();
return;